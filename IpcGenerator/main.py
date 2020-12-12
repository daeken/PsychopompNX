from SwIPC.idparser import getAll
from pprint import pprint

class CodeBuilder(object):
	def __init__(self, buf='', indentation=0):
		self.buf = ''
		self.indentation = indentation

	def indent(self):
		self.indentation += 1

	def dedent(self):
		self.indentation -= 1

	def __iadd__(self, right):
		self.buf += '\t' * self.indentation + right + '\n'
		return self

class ForwardType(object):
	def __init__(self, name, ts):
		self.name = name
		self.ts = ts
		self.resolved = None

	@property
	def type(self):
		if self.resolved is None:
			self.resolved = ['named', self.name, parseType(self.ts)]
		return self.resolved

def parseType(ts):
	type = ts[0]
	if type in forwardTypes:
		return forwardTypes[type].type

	if type in ('unknown', 'nn::util::BitFlagSet'):
		return ['unknown']
	elif type == 'bool':
		return ['bool']
	elif type in ('u8', 'b8'):
		return ['int', 8, False]
	elif type == 'u16':
		return ['int', 16, False]
	elif type == 'u32':
		return ['int', 32, False]
	elif type == 'u64':
		return ['int', 64, False]
	elif type == 'u128':
		return ['int', 128, False]
	elif type in ('i8', 's8'):
		return ['int', 8, True]
	elif type in ('i16', 's16'):
		return ['int', 16, True]
	elif type in ('i32', 's32', 'int'):
		return ['int', 32, True]
	elif type in ('i64', 's64'):
		return ['int', 64, True]
	elif type == 'f32':
		return ['float', 32]
	elif type == 'f64':
		return ['float', 64]
	elif type == 'bytes':
		return ['bytes', ts[1] if len(ts) >= 2 else -1, ts[2] if len(ts) == 3 and isinstance(ts[2], int) else -1]
	elif type == 'struct':
		return ['struct'] + [(name, parseType(ts)) for name, ts, _ in ts[1]]
	elif type == 'enum':
		return ['enum', parseType([ts[2]])] + [(name, value) for name, value, _ in ts[1]]
	elif type in ('array', 'buffer'):
		return ['buffer', parseType(ts[1]), ts[2]]
	elif type == 'handle':
		return ['handle', ts[1][0], parseType(ts[1][1]) if len(ts[1]) >= 2 else None]
	elif type == 'object':
		return ['object', ts[1][0]]
	elif type == 'pid':
		return ['pid']
	elif type == 'KObject':
		return ['handle', 'copy', None]
	elif type == 'align':
		return ['align', ts[1], parseType(ts[2])]

	print 'Unhandled type:', `type`, `ts`

def parseVersion(version, default=0):
	if version is None:
		return default
	elems = map(int, version.split('.'))
	return (elems[0] << 16) | (elems[1] << 8) | elems[2]

class IpcCommand(object):
	def __init__(self, body):
		self.id = body['cmdId']
		self.name = body['name']
		self.inputs = [(name, parseType(type)) for name, type in body['inputs']]
		self.outputs = [(name, parseType(type)) for name, type in body['outputs']]
		self.lastVersion = parseVersion(body.get('lastVersion'), -1)
		self.versionAdded = parseVersion(body.get('versionAdded'))
		self.versionRemoved = parseVersion(body.get('versionRemoved'), -1)

class IpcInterface(object):
	def __init__(self, name, body):
		self.name = name
		self.commands = []
		names = set()
		cmdIds = set()
		for cmd in body['cmds'][::-1]:
			cmd = IpcCommand(cmd)
			if cmd.id in cmdIds or cmd.name in names:
				continue
			cmdIds.add(cmd.id)
			names.add(cmd.name)
			self.commands.append(cmd)
		self.commands = self.commands[::-1]

		self.services = services[name] if name in services else []

types, ifaces, services = getAll()

types = {(name.split(',', 1)[1].split('>', 1)[0].strip() if name.startswith('nn::util::BitFlagSet') else name) : type for name, type in types.items()}
forwardTypes = {name : ForwardType(name, type) for name, type in types.items()}
typedefs = {name : ft.type for name, ft in forwardTypes.items()}
interfaces = {name: IpcInterface(name, body) for name, body in ifaces.items()}
namespaces = typedefs.keys() + interfaces.keys()
namespaces = [x.split(',', 1)[1].split('>', 1)[0].strip() if x.startswith('nn::util::BitFlagSet') else x for x in namespaces]
namespaces = set(x.rsplit('::', 1)[0] for x in namespaces)
namespaces = {ns : (
		{tn[len(ns) + 2:] : type for tn, type in typedefs.items() if tn.startswith(ns + '::') and '::' not in tn[len(ns) + 2:]}, 
		{tn[len(ns) + 2:] : type for tn, type in interfaces.items() if tn.startswith(ns + '::') and '::' not in tn[len(ns) + 2:]}
	) for ns in namespaces}

namespaces['Root'] = (
		{tn : type for tn, type in typedefs.items() if '::' not in tn}, 
		{tn : type for tn, type in interfaces.items() if '::' not in tn}
	)

namespaces = {ns: (types, ifaces) for ns, (types, ifaces) in namespaces.items() if len(types) or len(ifaces)}

def renameType(name):
	#if '::' not in name and '_' not in name:
	#	name = 'Root_' + name
	name = '_'.join(x[0].upper() + x[1:] for x in name.split('_'))
	name = [x[0].upper() + x[1:] for x in name.split('::')]
	if len(name) == 1:
		return name[0]
	return ''.join(name[:-1]) + '_' + name[-1]

def rename(name):
	name = name[0].lower() + name[1:]
	if name in ('init', 'close', 'import'):
		return '_' + name
	return name

intTypes = {
	(8, False): 'UInt8', 
	(16, False): 'UInt16', 
	(32, False): 'UInt32', 
	(64, False): 'UInt64', 
	(128, False): 'UInt128', 
	(8, True): 'Int8', 
	(16, True): 'Int16', 
	(32, True): 'Int32', 
	(64, True): 'Int64', 
	(128, True): 'Int128'
}

def isUnknown(type):
	return type[0] == 'unknown'

def genType(type):
	if type[0] == 'int':
		return intTypes[(type[1], type[2])]
	elif type[0] == 'float':
		return 'Float%i' % type[1]
	elif type[0] == 'bool':
		return 'Bool'
	elif type[0] == 'unknown':
		return 'Any?'
	elif type[0] == 'buffer':
		return 'Buffer<%s>' % (genType(type[1]) if not isUnknown(type[1]) and type[1][0] != 'bytes' else 'UInt8')
	elif type[0] == 'handle':
		if type[1] == 'copy':
			return genType(type[2]) if type[2] else 'KObject'
		elif type[1] == 'move':
			return genType(type[2]) if type[2] else 'IpcService'
	elif type[0] == 'pid':
		return 'Pid'
	elif type[0] == 'bytes':
		return '[UInt8]'
	elif type[0] == 'object':
		if type[1] == 'unknown':
			return 'IpcService'
		return renameType(type[1])
	elif type[0] == 'named':
		return renameType(type[1])
	elif type[0] == 'align':
		return genType(type[2])
	print `type`
	assert False

def isBuffer(type):
	if type[0] == 'align':
		return isBuffer(type[2])
	return type[0] == 'buffer'

class Main(object):
	def __init__(self):
		"""
		with file('../PsychopompNX/Services/ServiceMappings.swift', 'w') as fp:
			print >>fp, '''//
//  ServiceMappings.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/9/20.
//

import Foundation

let ipcServiceMappings: [String: () -> IpcService] =
        ['''
			for ns, (types, ifaces) in namespaces.items():
				for iname, iface in ifaces.items():
					for svc in iface.services:
						print >>fp, '            "%s": { %s() }, ' % (svc, renameType(ns + '_' + iname))
			print >>fp, '        ]'
		"""

		for ns, (types, ifaces) in namespaces.items():
			cb = CodeBuilder()
			ns = 'Root' if ns == '' else ns

			for name, type in types.items():
				name = renameType(ns + '::' + name if ns != 'Root' else name)
				type = type[2]

				if type[0] == 'struct':
					cb += 'struct %s {' % name
					for ename, etype in type[1:]:
						cb += '    var %s: %s' % (rename(ename), genType(etype))
					cb += ''
					cb += '    init(%s) {' % ', '.join('%s: %s' % (rename(ename), genType(etype)) for ename, etype in type[1:])
					for ename, _ in type[1:]:
						cb += '        self.%s = %s' % (rename(ename), rename(ename))
					cb += '    }'
					cb += '}'
				elif type[0] == 'enum':
					cb += 'enum %s: %s {' % (name, genType(type[1]))
					for ename, eval in type[2:]:
						cb += '    case %s = %i' % (rename(ename), eval)
					cb += '}'
				else:
					cb += 'typealias %s = %s' % (name, genType(type))

			if len(types):
				cb += ''

			for iname, iface in ifaces.items():
				rn = renameType(ns + '::' + iname if ns != 'Root' else iname)
				cb += 'class %s: IpcService {' % rn
				cb.indent()

				for cmd in iface.commands:
					outBufs = [(name, type) for name, type in cmd.outputs if isBuffer(type)]
					outputs = [(name, type) for name, type in cmd.outputs if not isBuffer(type)]
					rettype = ''
					if len(outputs) == 1:
						rettype = ' -> ' + genType(outputs[0][1])
					elif len(outputs) > 1:
						rettype = ' -> (%s)' % ', '.join('%s: %s' % (rename(name), genType(type)) if name else genType(type) for name, type in outputs)
					cb += 'func %s(%s) throws%s { throw IpcError.unimplemented(name: "%s") }' % (rename(cmd.name), ', '.join('_ %s: %s' % (name if name else '_%i' % i, genType(type)) for i, (name, type) in enumerate(cmd.inputs + outBufs)), rettype, ns + '::' + iface.name + '#' + cmd.name)

				if iface.commands:
					cb += ''

				cb += 'override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {'
				cb.indent()

				cb += 'switch im.commandId {'

				for cmd in iface.commands:
					cb += 'case %i:' % cmd.id
					cb.indent()

					outBufs = [(name, type) for name, type in cmd.outputs if isBuffer(type)]
					outputs = [(name, type) for name, type in cmd.outputs if not isBuffer(type)]

					self.cb = cb
					self.inputOffset = self.outputOffset = 8
					self.outI = self.moveInOffset = self.copyInOffset = self.moveOutOffset = self.copyOutOffset = 0
					outputHandlers = []
					bufferNums = {}
					self.varI = 0

					def genInputArg(type, aligned=False, name=None):
						def align(alignment):
							while (self.inputOffset % alignment) != 0:
								self.inputOffset += 1

						if type[0] == 'bool':
							ret = 'im.getData(%i) as Bool' % self.inputOffset
							self.inputOffset += 4
							return ret
						elif type[0] == 'buffer':
							if type[2] not in bufferNums:
								bufferNums[type[2]] = 0
							cbo = bufferNums[type[2]]
							bufferNums[type[2]] += 1
							return 'im.getBuffer(0x%x, %i) as %s' % (type[2], cbo, genType(type))
						elif type[0] == 'bytes':
							ret = 'im.getBytes(%i, 0x%x)' % (self.inputOffset, type[1])
							self.inputOffset += type[1]
							return ret
						elif type[0] == 'named':
							name = renameType(type[1])
							return genInputArg(type[2], aligned=aligned, name=name)
						elif type[0] == 'unknown':
							return 'nil'
						elif type[0] == 'int' or type[0] == 'float':
							if not aligned:
								align(type[1] / 8)
							ret = 'im.getData(%i) as %s' % (self.inputOffset, genType(type))
							self.inputOffset += type[1] / 8
							return ret
						elif type[0] == 'enum':
							assert name is not None
							return '%s(rawValue: %s)!' % (renameType(name), genInputArg(type[1], aligned=aligned, name=name))
						elif type[0] == 'align':
							align(type[1])
							return genInputArg(type[2], aligned=True, name=name)
						elif type[0] == 'handle':
							if type[1] == 'copy':
								handle = 'im.getCopy(%i)' % self.copyInOffset
								self.copyInOffset += 1
							elif type[1] == 'move':
								handle = 'im.getMove(%i)' % self.moveInOffset
								self.moveInOffset += 1
							return 'try Emulator.instance!.kernel.tryGetHandle(%s) as %s' % (handle, 'KObject' if type[2] is None else genType(type[2]))
						elif type[0] == 'object':
							handle = 'im.getMove(%i)' % self.moveInOffset
							self.moveInOffset += 1
							return 'try Emulator.instance!.kernel.tryGetHandle(%s) as %s' % (handle, renameType(type[1]))
						elif type[0] == 'pid':
							return 'im.pid'
						elif type[0] == 'struct':
							assert name is not None
							return '%s(%s)' % (renameType(name), ', '.join('%s: %s' % (rename(ename), genInputArg(etype)) for ename, etype in type[1:]))
						else:
							return 'foo'

					def genOutputArg(type):
						if type[0] == 'buffer':
							if type[2] not in bufferNums:
								bufferNums[type[2]] = 0
							cbo = bufferNums[type[2]]
							bufferNums[type[2]] += 1
							return 'im.getBuffer(0x%x, %i) as %s' % (type[2], cbo, genType(type))
						print type
						assert False

					def genOutput(var, type, aligned=False):
						def align(alignment):
							while (self.outputOffset % alignment) != 0:
								self.outputOffset += 1

						if type[0] == 'int' or type[0] == 'float':
							if not aligned:
								align(type[1] / 8)
							outputHandlers.append('om.setData(%i, %s)' % (self.outputOffset, var))
							self.outputOffset += type[1] / 8
						elif type[0] == 'bool':
							outputHandlers.append('om.setData(%i, UInt32(%s ? 1 : 0))' % (self.outputOffset, var))
							self.outputOffset += 4
						elif type[0] == 'unknown':
							pass
						elif type[0] == 'named':
							return genOutput(var, type[2], aligned=aligned)
						elif type[0] == 'handle':
							if type[1] == 'copy':
								outputHandlers.append('om.copy(%i, %s)' % (self.copyOutOffset, var))
								self.copyOutOffset += 1
							elif type[1] == 'move':
								outputHandlers.append('om.move(%i, %s)' % (self.moveOutOffset, var))
								self.moveOutOffset += 1
							else:
								print type
								assert False
						elif type[0] == 'bytes':
							outputHandlers.append('if %s.count != 0x%x { throw IpcError.byteCountMismatch }' % (var, type[1]))
							outputHandlers.append('om.setBytes(%i, %s)' % (self.outputOffset, var))
							self.outputOffset += type[1]
						elif type[0] == 'object':
							outputHandlers.append('om.move(%i, %s)' % (self.moveOutOffset, var))
							self.moveOutOffset += 1
						elif type[0] == 'struct':
							for ename, etype in type[1:]:
								genOutput('%s.%s' % (var, rename(ename)), etype)
						elif type[0] == 'enum':
							genOutput('%s(%s.rawValue)' % (genType(type[1]), var), type[1])
						else:
							print type
							assert False

					args = [genInputArg(type) for _, type in cmd.inputs] + [genOutputArg(type) for _, type in outBufs]
					args = [arg for arg in args if arg]
					ret = ''
					rets = []
					if len(outputs) == 1:
						ret = 'let ret = '
						rets = ['ret']
					elif len(outputs) > 1:
						rets = ['_%i' % i for i, _ in enumerate(outputs)]
						ret = 'let (%s) = ' % ', '.join(rets)

					for var, (_, ot) in zip(rets, outputs):
						genOutput(var, ot)

					cb += '%stry %s(%s)' % (ret, rename(cmd.name), ', '.join(args))
					cb += 'om.initialize(%s, %s, %s)' % (self.moveOutOffset, self.copyOutOffset, self.outputOffset - 8)
					for line in outputHandlers:
						cb += line

					cb.dedent()
					cb += ''

				cb += 'default:'
				cb.indent()
				cb += 'print("Unhandled command to %s: \\(im.commandId)")' % (ns + '::' + iname if ns != 'Root' else iname)
				cb += 'try! bailout()'
				cb.dedent()

				cb += '}'

				cb.dedent()
				cb += '}'

				cb.dedent()
				cb += '}'
				cb += ''


			with file('../PsychopompNX/Services/Generated/%s.swift' % renameType(ns), 'w') as fp:
				print >>fp, cb.buf.rstrip()

Main()

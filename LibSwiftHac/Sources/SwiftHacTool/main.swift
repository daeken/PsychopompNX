//
//  main.swift
//  
//
//  Created by Sera Brocious on 12/12/20.
//

import Foundation
import LibSwiftHac

let file = try MmappedFile("/Users/daeken/switch/Super Mario Odyssey.nsp")
let fs = FileStorage(file)
let pfs = try PartitionFileSystem(fs)

for (name, data) in pfs.files {
    //print(name)
    if name.hasSuffix(".tik") {
        _ = Ticket(data)
    } else if name.hasSuffix(".nca") {
        _ = Nca(data)
    }
}

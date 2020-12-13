//
//  PointerSpan.swift
//  
//
//  Created by Sera Brocious on 12/13/20.
//

import Foundation

class PointerSpan<Element>: ISpan {
    var foo = [Element]()
    
    subscript(index: Int) -> Element {
        foo[index]
    }
}

class MutablePointerSpan<Element>: PointerSpan<Element>, IMutableSpan {
    override subscript(index: Int) -> Element {
        get { super[index] }
        set {
        }
    }
}

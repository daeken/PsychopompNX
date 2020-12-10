//
//  ContentView.swift
//  PsychopompNX
//
//  Created by Sera Brocious on 12/3/20.
//

import SwiftUI

struct ContentView: View {
    let emu: Emulator

    var body: some View {
        Text("Hello, world!!!!!!!!!!!!")
                .padding()
    }

    init() throws {
        emu = try Emulator()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        try! ContentView()
    }
}

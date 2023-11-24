//
//  TelasApp.swift
//  Telas
//
//  Created by Valéria Cavalcanti on 24/11/23.
//

import SwiftUI

@main
struct TelasApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(tvm: TelasViewModel())
        }
    }
}

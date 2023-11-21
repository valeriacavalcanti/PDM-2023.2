//
//  ContadorApp.swift
//  Contador
//
//  Created by Valéria Cavalcanti on 20/11/23.
//

import SwiftUI

@main
struct ContadorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(contatorVM: ContadorViewModel())
        }
    }
}

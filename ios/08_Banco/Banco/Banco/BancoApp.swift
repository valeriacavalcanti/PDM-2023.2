//
//  BancoApp.swift
//  Banco
//
//  Created by Valéria Cavalcanti on 20/12/23.
//

import SwiftUI

@main
struct BancoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

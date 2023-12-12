//
//  NotasApp.swift
//  Notas
//
//  Created by Valéria Cavalcanti on 11/12/23.
//

import SwiftUI

@main
struct NotasApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

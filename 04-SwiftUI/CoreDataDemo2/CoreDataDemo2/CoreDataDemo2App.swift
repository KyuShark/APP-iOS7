//
//  CoreDataDemo2App.swift
//  CoreDataDemo2
//
//  Created by 황규상 on 1/16/25.
//

import SwiftUI

@main
struct CoreDataDemo2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

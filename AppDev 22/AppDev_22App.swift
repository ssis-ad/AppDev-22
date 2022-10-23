//
//  AppDev_22App.swift
//  AppDev 22
//
//  Created by Matthias Kreier on 10/24/22.
//

import SwiftUI

@main
struct AppDev_22App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

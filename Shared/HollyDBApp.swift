//
//  HollyDBApp.swift
//  Shared
//
//  Created by Frederick Javalera on 11/29/21.
//

import SwiftUI

@main
struct HollyDBApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MovieSearchView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

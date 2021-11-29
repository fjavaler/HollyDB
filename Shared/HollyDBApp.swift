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
  @StateObject var movieSearchViewModel: MovieSearchViewModel = MovieSearchViewModel()
  
  var body: some Scene {
    WindowGroup {
      NavigationView {
        MovieSearchView()
          .environment(\.managedObjectContext, persistenceController.container.viewContext)
          .environmentObject(movieSearchViewModel)
      }
    }
  }
}

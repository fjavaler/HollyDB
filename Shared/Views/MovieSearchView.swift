//
//  MovieSearchView.swift
//  Shared
//
//  Created by Frederick Javalera on 11/29/21.
//

import SwiftUI
import CoreData

struct MovieSearchView: View {
  @EnvironmentObject var movieSearchViewModel: MovieSearchViewModel
  @State var searchText: String = ""
  
  var body: some View {
    ScrollView {
      ZStack {
        LinearGradient(colors: [Color.blue, Color.purple], startPoint: .topLeading, endPoint: .bottomTrailing)
          .ignoresSafeArea()
        
        VStack(alignment: .leading) {
          Text("HollyDB")
            .font(.largeTitle)
          
          TextField("", text: <#T##Binding<String>#>, prompt: "Search...")
        }
      }
    }
  }
}

struct MovieSearchView_Previews: PreviewProvider {
  static var previews: some View {
    MovieSearchView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
  }
}

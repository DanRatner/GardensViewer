// DANIEL RATNER
// CIS 137
//
//  GardenTabView.swift
//  Gardens
//
//  Created by Daniel Ratner on 11/30/20.
//  Copyright © 2020 Daniel Ratner. All rights reserved.
//

import SwiftUI

struct GardenTabView: View {
  @State var gardens = gardenData
  
    
    //Set view for tab view
  var body: some View {
    TabView {
      NavigationView {
        
        //show garden list tabs
        GardenList(gardens: $gardens, tabTitle: "All Gardens", hideVisited: false)
        DetailView(garden: gardens[0])
      }
      .tabItem({
        
        //options
        Text("Gardens 💕 🙏 🌟")
      })
      
        
        //Display unvisited
      NavigationView {
        GardenList(gardens: $gardens, tabTitle: "Unvisited Gardens", hideVisited: true)
        DetailView(garden: gardens[0])
      }
      .tabItem({ Text("Unvisited Gardens") })
    }
  }
}

struct GardenTabView_Previews: PreviewProvider {
  static var previews: some View {
    GardenTabView()
  }
}

struct GardenList: View {
  @Binding var gardens: [Garden]
  let tabTitle: String
  let hideVisited: Bool
  
  var showGarden: [Garden] {
    hideVisited ? gardens.filter { $0.reaction == "" } : gardens
  }
  
  private func setReaction(_ reaction: String, for item: Garden) {
    if let index = gardens.firstIndex(
      where: { $0.id == item.id }) {
      gardens[index].reaction = reaction
    }
  }
  
  var body: some View {
    List(showGarden) { garden in
      NavigationLink(
      destination: DetailView(garden: garden)) {
        Text("\(garden.reaction)  \(garden.name)")
          .onAppear() { garden.load() }
          .contextMenu {
            Button("Love it: 💕") {
              self.setReaction("💕", for: garden)
            }
            Button("Thoughtful: 🙏") {
              self.setReaction("🙏", for: garden)
            }
            Button("Wow!: 🌟") {
              self.setReaction("🌟", for: garden)
            }
        }
      }
    }
    .navigationBarTitle(tabTitle)
  }
}

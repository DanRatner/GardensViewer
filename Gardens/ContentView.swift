// DANIEL RATNER
// CIS 137
//
//  ContentView.swift
//  Gardens
//
//  Created by Daniel Ratner on 11/30/20.
//  Copyright © 2020 Daniel Ratner. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//Declaring the variables
  @State var gardens = gardenData
  @State private var hideVisited = false
  
    
    //Garden Reacions
  var showGarden: [Garden] {
    hideVisited ? gardens.filter { $0.reaction == "" } : gardens
  }

//Set function for garden reacionts
  private func setReaction(_ reaction: String, for item: Garden) {
    if let index = gardens.firstIndex(
      where: { $0.id == item.id }) {
      gardens[index].reaction = reaction
    }
  }

  var body: some View {
    NavigationView {
        
        //Iterate throught garden arrays
      List(showGarden) { garden in
        NavigationLink(
        destination: DetailView(garden: garden)) {
            //display name
          Text("\(garden.reaction)  \(garden.name)")
            .onAppear() { garden.load() }
            
            //garden reaction options
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
        
        //Garden information
      .navigationBarTitle("Gardens")
      .navigationBarItems(trailing:
        Toggle(isOn: $hideVisited, label: { Text("Hide Visited") }))
      
      DetailView(garden: gardens[0])
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

// DANIEL RATNER
// CIS 137
//
//  DetailView.swift
//  Gardens
//
//  Created by Daniel Ratner on 11/30/20.
//  Copyright © 2020 Daniel Ratner. All rights reserved.
//

import SwiftUI

struct DetailView: View {
  let garden: Garden
  @State private var showMap = false

  var body: some View {
    VStack {
        
        //display iamge
      Image(garden.imageName)
        .resizable()
        
        //changes the size requirements to allow full picture
        .frame(maxWidth: 900, maxHeight: 900)
        .aspectRatio(contentMode: .fit)
      Text("\(garden.reaction)  \(garden.name)")
        .font(.headline)
        .multilineTextAlignment(.center)
        .lineLimit(3)
        
        //map opttions
      HStack {
        Button(action: { self.showMap = true }) {
          Image(systemName: "mappin.and.ellipse")
        }
        .sheet(isPresented: $showMap) {
//          MapView(coordinate: self.garden.coordinate)
          LocationMap(showModal: self.$showMap, garden: self.garden)
        }
        //garden location
        Text(garden.locationName)
          .font(.subheadline)
      }
        
        //link to the website for each garden
      Button(action: {
        
        //open the gaden.website url
        UIApplication.shared.open(URL(string: self.garden.website)!)
      }) {
            Text("Website")
            .font(.subheadline)
        }
    
      Divider()
      Text(garden.description)
        .multilineTextAlignment(.leading)
        
    }
    .padding()
        
        //show garden description
    .navigationBarTitle(Text(garden.name), displayMode: .inline)
  }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
      DetailView(garden: gardenData[0])
    }
}


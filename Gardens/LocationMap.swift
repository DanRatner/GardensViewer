// DANIEL RATNER
// CIS 137
//
//  LocationMap.swift
//  Gardens
//
//  Created by Daniel Ratner on 11/30/20.
//  Copyright © 2020 Daniel Ratner. All rights reserved.
//

import SwiftUI

struct LocationMap: View {
  @Binding var showModal: Bool
  var garden: Garden

  var body: some View {
    VStack {
      MapView(coordinate: garden.coordinate)
      HStack {
        Text(self.garden.locationName)
        Spacer()
        Button("Done") { self.showModal = false }
      }
      .padding()
    }
  }
}

struct LocationMap_Previews: PreviewProvider {
  static var previews: some View {
    LocationMap(showModal: .constant(true), garden: gardenData[0])
  }
}

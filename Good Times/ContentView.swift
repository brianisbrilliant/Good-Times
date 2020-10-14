//
//  ContentView.swift
//  Good Times
//
//  Created by Professor Foster on 10/14/20.
//  Copyright © 2020 Professor Foster. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // this var is temporary to test functionality.
    var biznizez: [Establishment]
    
    mutating func AddBiz(name: String) {
        biznizez.append(Establishment(id: 01, coordinates: Coordinates(latitude: 2,longitude: 3), name: "The Anchor", operatingHours: 17, specials: Special(specialHours: 1234, specialDate: 45, specialDescription: "All U Can Eat"), favorite: false, phoneNumber: "123-456-7890"))
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                MapView()
                    .frame(height: 300)
                
                List{
                    Text("The Anchor")
                    Text("The Anchor")
                    Text("The Anchor")
                    Text("The Anchor")
                }
                
            }
            .navigationBarTitle(Text("Good Times"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(biznizez: <#[Establishment]#>)
    }
}

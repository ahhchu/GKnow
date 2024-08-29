//
//  ContentView.swift
//  GKnow
//
//  Created by Catherine Chu on 8/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {  // Add NavigationView here
            VStack {
                Image(systemName: "testtube.2")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("GKnow!")
                
                NavigationLink(destination: PatientInfoInput()) {
                    Text("Create new patient info")
                        .font(.custom("Silkscreen-Regular", size: 20))
                        .padding(10)
                }
            }
            .padding()
            .navigationTitle("Home") // Optional: Set a navigation title
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

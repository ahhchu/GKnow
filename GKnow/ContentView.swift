//
//  ContentView.swift
//  GKnow
//
//  Created by Catherine Chu on 8/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "testtube.2")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("GKnow!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

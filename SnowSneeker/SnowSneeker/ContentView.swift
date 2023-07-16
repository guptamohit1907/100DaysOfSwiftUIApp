//
//  ContentView.swift
//  SnowSneeker
//
//  Created by Mohit Gupta on 16/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink{
                Text("New Secondary")
            } label: {
                Text("Hello World")
            }
            .navigationTitle("Primary")
            Text("Secondary")
            Text("Tertiary")            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

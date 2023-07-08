//
//  ContentView.swift
//  HotProspects
//
//  Created by Mohit Gupta on 08/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "One"
    
    var body: some View {
        TabView(selection: $selectedTab){
            Text("Tab 1")
                .onTapGesture {
                    selectedTab = "Two"
                }
                .tabItem{
                    Label("One", systemImage: "star")
                }
            Text("Tab 2")
                .tabItem {
                    Label("Two", systemImage: "circle")
                }.tag("Two")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

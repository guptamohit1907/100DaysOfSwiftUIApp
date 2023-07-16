//  ContentView.swift
//  LayoutAndGeomtery
//
//  Created by Mohit Gupta on 16/07/23.

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")           
            .background(.red)
            .offset(x:100, y : 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

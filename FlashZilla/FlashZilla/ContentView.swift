//
//  ContentView.swift
//  FlashZilla
//
//  Created by Mohit Gupta on 15/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            Text("Hello")
            Spacer().frame(height : 100)
            Text("World")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("Tapped")
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

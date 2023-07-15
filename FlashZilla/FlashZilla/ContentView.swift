//
//  ContentView.swift
//  FlashZilla
//
//  Created by Mohit Gupta on 15/07/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        Text("Hello World")
            .padding()
            .onChange(of: scenePhase) { newPhase in
                if newPhase == .active{
                    print("Active")
                } else if newPhase == .inactive{
                    print("InActive")
                } else if newPhase == .background {
                    print("Background")
                } 
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

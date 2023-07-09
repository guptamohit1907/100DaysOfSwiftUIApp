//
//  ContentView.swift
//  HotProspects
//
//  Created by Mohit Gupta on 08/07/23.

import SwiftUI
import UserNotifications

struct ContentView: View {
    
    var body: some View {
        List {
            Text("Taylor Swift")
                .swipeActions {
                    Button(role :.destructive){
                        print("Deleting")
                    } label: {
                        Label("Delete",systemImage: "minus.circle")
                    }
                }.swipeActions(edge : .leading) {
                    Button{
                        print("Pinning")
                    } label: {
                        Label("Pin", systemImage: "pin")
                    }
                    .tint(.orange)
                }
        }
    }
  }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  HotProspects
//
//  Created by Mohit Gupta on 08/07/23.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    @State private var backgroundColor = Color.red
    
    var body: some View {
        VStack{
            Text("Hello World")
                .padding()
                .background(backgroundColor)
            
            Text("Change Color")
                .padding()
                .contextMenu{
                    Button(role : .destructive){
                        backgroundColor = .red
                    } label: {
                        Label("Red",systemImage: "checkmark.circle.fill")
                            .foregroundColor(.red)
                    }
                    Button("Green"){
                        backgroundColor = .green
                    }
                    Button("Blue"){
                        backgroundColor = .blue
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

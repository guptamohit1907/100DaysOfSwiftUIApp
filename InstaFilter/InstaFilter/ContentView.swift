//
//  ContentView.swift
//  InstaFilter
//
//  Created by Mohit Gupta on 30/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Text("Hello World")
            .foregroundColor(Color.black)
            .frame(width: 300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                showingConfirmation = true
            }
            .confirmationDialog("Change Background", isPresented: $showingConfirmation) {
                Button("Red"){ backgroundColor = .red }
                Button("Green"){ backgroundColor = .green }
                Button("Blue"){ backgroundColor = .blue }
                Button("Cancel", role: .cancel){}
                } message: {
                    Text("Select a new Color")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

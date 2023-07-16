//
//  ContentView.swift
//  SnowSneeker
//
//  Created by Mohit Gupta on 16/07/23.
//

import SwiftUI

struct User : Identifiable{
    var id = "Taylor Swift"
}

struct ContentView: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false
    
    var body: some View {
        Text("Hello World")
            .onTapGesture {
                selectedUser = User()
                isShowingUser = true
            }
            .alert("Welcome", isPresented: $isShowingUser){ }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  SnowSneeker
//
//  Created by Mohit Gupta on 16/07/23.
//

import SwiftUI

struct UserView : View{
    var body: some View{
        Group{
            Text("Name : Paul")
            Text("Country : England")
            Text("Pets : Luna and Arya")
        }
        .font(.title)
    }
}

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        if sizeClass == .compact{
            VStack(content : UserView.init)
        } else {
            HStack(content : UserView.init)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

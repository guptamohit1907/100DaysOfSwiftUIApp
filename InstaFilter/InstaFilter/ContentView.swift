//
//  ContentView.swift
//  InstaFilter
//
//  Created by Mohit Gupta on 30/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var image : Image?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack{
            image?.resizable().scaledToFit()
            Button("Select Image"){
                showingImagePicker = true
            }
        }.sheet(isPresented: $showingImagePicker){
            ImagePicker()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

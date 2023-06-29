//
//  ContentView.swift
//  InstaFilter
//
//  Created by Mohit Gupta on 30/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount = 0.0 {
        didSet {
            print("New Value is \(blurAmount)")
        }
    }
    
    var body: some View {
        VStack{
            Text("Hello, world!")
                .blur(radius: blurAmount)
            Slider(value: $blurAmount, in : 0...20)
                
            Button("Random Blur"){
                blurAmount = Double.random(in: 0...20)
            }
        }.onChange(of: blurAmount){newValue in
            print("New Value is \(newValue)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

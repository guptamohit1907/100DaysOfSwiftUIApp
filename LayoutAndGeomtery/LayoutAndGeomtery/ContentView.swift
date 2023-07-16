//  ContentView.swift
//  LayoutAndGeomtery
//
//  Created by Mohit Gupta on 16/07/23.

import SwiftUI

struct ContentView: View {
    let colors : [Color] = [.red,.green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing : 0){
                ForEach(1..<20){(number) in
                    GeometryReader{ geo in
                        Text("Number \(number)")
                            .font(.largeTitle)
                            .padding()
                            .background(.red)
                            .rotation3DEffect(.degrees(-geo.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
                            .frame(width: 200, height: 200)
                    }
                    .frame(width: 200, height: 200)
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

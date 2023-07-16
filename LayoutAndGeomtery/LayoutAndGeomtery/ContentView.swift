//
//  ContentView.swift
//  LayoutAndGeomtery
//
//  Created by Mohit Gupta on 16/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            ForEach(0..<10){position in
                Text("Number \(position)")
                    .alignmentGuide(.leading) { _ in
                        Double(position) * -10
                    }
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

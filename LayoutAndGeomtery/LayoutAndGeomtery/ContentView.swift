//  ContentView.swift
//  LayoutAndGeomtery
//
//  Created by Mohit Gupta on 16/07/23.

import SwiftUI

extension VerticalAlignment{
    enum MidAccountName : AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    static let midAccountName = VerticalAlignment(MidAccountName.self)
}

struct ContentView: View {
    var body: some View {
        HStack(alignment: .midAccountName){
            VStack{
                Text("@twostraws")
                    .alignmentGuide(.midAccountName) { d  in
                        d[VerticalAlignment.center]
                    }
                Image("paul-hudson")
                    .resizable()
                    .frame(width: 64, height: 64)
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
            }
            VStack{
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
                Text("Full name :")
                Text("PAUL HUDSON")
                    .alignmentGuide(.midAccountName, computeValue: { d in
                        d[VerticalAlignment.center]
                    })
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

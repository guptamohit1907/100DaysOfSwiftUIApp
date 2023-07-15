//
//  ContentView.swift
//  FlashZilla
//
//  Created by Mohit Gupta on 15/07/23.
//

import SwiftUI

func withOptionalAnimation<Result>(_ animation : Animation? = .default, _ body : () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled{
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}

struct ContentView: View {
    @Environment(\.accessibilityReduceTransparency) var reduceTransparency
    
    var body: some View {
        Text("Hello World")
            .padding()
            .background(reduceTransparency ? .black : .black.opacity(0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

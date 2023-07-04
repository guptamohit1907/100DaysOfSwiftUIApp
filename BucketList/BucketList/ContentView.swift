//
//  ContentView.swift
//  BucketList
//
//  Created by Mohit Gupta on 04/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       Text("Hello World")
            .onTapGesture {
                let str = "Test Message"
                let url = getDocumentDirectory().appendingPathExtension("message.txt")
                do {
                    try str.write(to: url, atomically: true, encoding: .utf8)
                    let input = try String(contentsOf: url)
                    print(input)
                } catch{
                    print(error.localizedDescription)
                }
            }
    }
    
    func getDocumentDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

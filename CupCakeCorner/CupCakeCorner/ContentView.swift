//
//  ContentView.swift
//  CupCakeCorner
//
//  Created by Mohit Gupta on 04/06/23.
//

import SwiftUI

class User : ObservableObject, Codable {
    enum CodingKeys : CodingKey {
        case name
    }
    @Published var name = "Paul Hudson"
    
    required init(from decoder : Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

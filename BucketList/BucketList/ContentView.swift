//
//  ContentView.swift
//  BucketList
//
//  Created by Mohit Gupta on 04/07/23.
//

import SwiftUI

struct User : Identifiable, Comparable {
    let id = UUID()
    let firstName : String
    let lastName : String
    
    static func <(lhs : User, rhs : User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct ContentView: View {
    let users = [
         User(firstName: "Arnold", lastName: "Rimmer"),
         User(firstName: "Kristinie", lastName: "Kochanski"),
         User(firstName: "David", lastName: "List"),
    ].sorted{
        $0.lastName < $1.lastName
    }
    
    var body: some View {
        List(users){ user in
            Text("\(user.firstName) \(user.lastName)")
        }
    }
    
    func example(){
        let result = 4 < 5
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

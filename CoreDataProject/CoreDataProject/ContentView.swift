//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Mohit Gupta on 12/06/23.
//

import SwiftUI

struct Student : Hashable {
    let name : String
}

struct ContentView: View {
    
    let students = [Student(name: "Harry Potter"), Student(name: "Hermoine Granger")]
    
    var body: some View {
        List(students,id: \.self){ student in
            Text(student.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  BookWorm
//
//  Created by Mohit Gupta on 05/06/23.
//

import SwiftUI


struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students : FetchedResults<Student>
    
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Unknown")
            }
            Button("Add"){
                let firstNames = ["Ginny", "Harry", "Hermoine","Luna", "Ron"]
                let lastNames = ["Granger","Lovegood","Potter","Weasley"]
                
                let choosenFirstName = firstNames.randomElement()!
                let choosenLastName = lastNames.randomElement()!
                
                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(choosenFirstName) \(choosenLastName)"
                
                try? moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

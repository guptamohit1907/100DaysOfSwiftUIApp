//
//  Prospect.swift
//  HotProspects
//
//  Created by Mohit Gupta on 13/07/23.
//

import SwiftUI

class Prospect : Codable, Identifiable {
    var id = UUID()
    var name = "Anonymous"
    var emailAddress = ""
    var isContacted = false
}

@MainActor class Prospects : ObservableObject {
    @Published var people : [Prospect]
    init(){
        people = []
    }
}

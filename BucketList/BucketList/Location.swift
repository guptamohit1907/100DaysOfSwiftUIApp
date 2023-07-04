//
//  Location.swift
//  BucketList
//
//  Created by Mohit Gupta on 04/07/23.
//

import Foundation

struct Location : Identifiable, Codable, Equatable {
    let id : UUID
    var name : String
    var description : String
    let latitude : Double
    let longitude : Double
}

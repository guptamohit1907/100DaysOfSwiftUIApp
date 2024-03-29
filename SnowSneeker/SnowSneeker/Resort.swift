//
//  Resort.swift
//  SnowSneeker
//
//  Created by Mohit Gupta on 16/07/23.
//

import Foundation

struct Resort : Identifiable, Codable {
    let id : String
    let name : String
    let country : String
    let description : String
    let imageCredit : String
    let price : Int
    let size : Int
    let snowDepth : Int
    let elevation : Int
    let runs : Int
    let facilities : [String]
    
    var facilityTypes : [Facility]{
        facilities.map(Facility.init)
    }
    
    static let allResorts : [Resort] = Bundle.main.decode("resorts.json")
    static let example = allResorts[0]    
}

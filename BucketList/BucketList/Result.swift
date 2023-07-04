//
//  Result.swift
//  BucketList
//
//  Created by Mohit Gupta on 04/07/23.
//

import Foundation

struct Result : Codable {
    let query : Query
}

struct Query : Codable {
    let pages : [Int : Page]
}

struct Page : Codable {
    let pageId : Int
    let title : String
    let terms : [String : [String]]?
}

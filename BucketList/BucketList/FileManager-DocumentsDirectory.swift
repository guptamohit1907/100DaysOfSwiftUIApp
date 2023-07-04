//
//  FileManager-DocumentsDirectory.swift
//  BucketList
//
//  Created by Mohit Gupta on 04/07/23.
//

import Foundation

extension FileManager {
    static var documentsDirectory : URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}

//
//  DataController.swift
//  BookWorm
//
//  Created by Mohit Gupta on 10/06/23.
//

import CoreData
import Foundation

class DataController : ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init(){
        container.loadPersistentStores { description, error in
            if let error {
                print("Core Data failed to load : \(error.localizedDescription)")
            }
        }
    }
}

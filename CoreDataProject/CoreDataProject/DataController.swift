//
//  DataController.swift
//  CoreDataProject
//
//  Created by Mohit Gupta on 25/06/23.
//

import Foundation
import CoreData

class DataController : ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataProject")
    init(){
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data Failed to load : \(error.localizedDescription)")
                return
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
}

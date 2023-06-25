//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Mohit Gupta on 26/06/23.
//

import SwiftUI
import CoreData

struct FilteredList<T : NSManagedObject, Content : View>: View {
    @FetchRequest var fetchRequest : FetchedResults<T>
    let content: (T) -> Content
    
    var body: some View {
        List(fetchRequest, id : \.self) {item in
            self.content(item)
        }
    }
    
    init(filterKey : String, filterValue : String, @ViewBuilder content: @escaping (T) -> Content){
       _fetchRequest = FetchRequest<T>(sortDescriptors: [],predicate: NSPredicate(format: "%K BEGINSWITH %@", filterKey, filterValue))
        self.content = content
    }
}

//struct FilteredList_Previews: PreviewProvider {
//    static var previews: some View {
//        FilteredList()
//    }
//}

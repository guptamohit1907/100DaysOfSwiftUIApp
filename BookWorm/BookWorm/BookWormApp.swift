//
//  BookWormApp.swift
//  BookWorm
//
//  Created by Mohit Gupta on 05/06/23.
//

import SwiftUI

@main
struct BookWormApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

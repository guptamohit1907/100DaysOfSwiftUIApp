//
//  Order.swift
//  CupCakeCorner
//
//  Created by Mohit Gupta on 04/06/23.
//

import Foundation

class Order : ObservableObject {
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    @Published var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var zip = ""
    
    var hasValidAddress : Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty{
            return false
        }
        return true
    }
}

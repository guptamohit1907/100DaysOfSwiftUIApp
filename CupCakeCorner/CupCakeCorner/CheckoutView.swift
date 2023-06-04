//
//  CheckoutView.swift
//  CupCakeCorner
//
//  Created by Mohit Gupta on 04/06/23.
//

import SwiftUI

struct CheckoutView: View {
    @ObservedObject var order : Order
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}

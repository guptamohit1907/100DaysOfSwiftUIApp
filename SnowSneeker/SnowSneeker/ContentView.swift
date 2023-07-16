//
//  ContentView.swift
//  SnowSneeker
//
//  Created by Mohit Gupta on 16/07/23.
//

import SwiftUI

extension View {
    @ViewBuilder func phoneOnlyNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone{
            self.navigationViewStyle(.stack)
        } else {
            
        }
    }
}


struct ContentView: View {
    let resorts : [Resort] = Bundle.main.decode("resorts.json")
    
    var body: some View {
        NavigationView{
            List(resorts) { resort in
                NavigationLink{
                    Text(resort.name)
                } label: {
                    Image(resort.country)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40,height: 25)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .overlay(
                           RoundedRectangle(cornerRadius: 5)
                            .stroke(.black, lineWidth: 1)
                        )
                    
                    VStack(alignment: .leading){
                        Text(resort.name)
                            .font(.headline)
                        Text("\(resort.runs) runs")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Resorts")
            
            WelcomeView()
        }
        .phoneOnlyNavigationView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

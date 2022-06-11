//
//  ContentView.swift
//  Fruits-SwiftUI
//
//  Created by hakkı can şengönül on 11.06.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits : [Fruit] = fruitData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()){item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}

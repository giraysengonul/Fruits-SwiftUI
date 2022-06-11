//
//  OnboardingView.swift
//  Fruits-SwiftUI
//
//  Created by hakkı can şengönül on 11.06.2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
   
    var fruits: [Fruit] = fruitData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
        
        }//TABVIEW
        .tabViewStyle(.page)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}

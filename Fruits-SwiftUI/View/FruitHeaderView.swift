//
//  FruitHeaderView.swift
//  Fruits-SwiftUI
//
//  Created by hakkı can şengönül on 11.06.2022.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTIES
    var fruit : Fruit
    @State private var isAnimatingImage : Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.2), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.3)
        }
        .frame(height:440)
        .onAppear {
            withAnimation(.easeInOut(duration: 0.7)) {
                isAnimatingImage = true
            }
        }
    }
}


// MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitData[4]).previewLayout(.fixed(width: 375, height: 440))
    }
}

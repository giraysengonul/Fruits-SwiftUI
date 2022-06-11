//
//  FruitDetailView.swift
//  Fruits-SwiftUI
//
//  Created by hakkı can şengönül on 11.06.2022.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    var fruit : Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrients
                        //SubHeadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //Link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }//VStack
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                }//VStack
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
                
            }//Scrool
            .edgesIgnoringSafeArea(.all)
            
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    
}


// MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[3])
    }
}

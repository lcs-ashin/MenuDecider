//
//  FoodSuggestionView.swift
//  MenuDecider
//
//  Created by Eunbi Shin on 2021-12-10.
//

import SwiftUI

struct FoodSuggestionView: View {
    // MARK: Stored Properties
    let listOfMenuItems: [Menu]
    
    @State var currentMenuItem: Menu = listOfBreakfast.randomElement()!
    @State var isRecommendationShowing = true
    
    // MARK: Computed Property
    var body: some View {
        VStack {
            // Menu Recommendation
            Text(currentMenuItem.recommendation)
                .font(.title)
            // Condition                   True  False
            .opacity(isRecommendationShowing ? 1.0 : 0.0)
            
            // Refresh button
            Button(action: {
                currentMenuItem = listOfMenuItems.randomElement()!
            }, label: {
                Image(systemName: "arrow.2.squarepath")
                    .foregroundColor(.primary)
                    .font(.title2)
            })
                .buttonStyle(.bordered)
                // Condition                   True  False
                .opacity(isRecommendationShowing ? 1.0 : 0.0)
                .padding()
        }
        .task {
            currentMenuItem = listOfMenuItems.randomElement()!
        }
    }
}

struct FoodSuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        FoodSuggestionView(listOfMenuItems: listOfBreakfast)
    }
}

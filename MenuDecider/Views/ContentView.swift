//
//  ContentView.swift
//  MenuDecider
//
//  Created by Eunbi Shin on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    // List of Menu
    @State var currentMenuForBreakfast: Menu = listOfBreakfast.randomElement()!
    @State var currentMenuForLunch: Menu = listOfLunch.randomElement()!
    @State var currentMenuForDinner: Menu = listOfDinner.randomElement()!
    
    // Recommendation visible or not
    @State var isBreakfastRecommendationShowing = false
    @State var isLunchRecommendationShowing = false
    @State var isDinnerRecommendationShowing = false
    
    // MARK: Computed Properties
    var body: some View {
        VStack {
            // Three buttons
            HStack {
                Button(action: {
                  isBreakfastRecommendationShowing = true
                }, label: {
                    Text("Breakfast")
                        .foregroundColor(.primary)
                        .font(.title2)
                })
                
                Button(action: {
                    isLunchRecommendationShowing = true
                }, label: {
                    Text("Lunch")
                        .foregroundColor(.primary)
                        .font(.title2)
                })
                
                Button(action: {
                    isDinnerRecommendationShowing = true
                }, label: {
                    Text("Dinner")
                        .foregroundColor(.primary)
                        .font(.title2)
                })
            }
            .buttonStyle(.bordered)
            
            .padding()
            
            ZStack {
                FoodSuggestionView(listOfMenuItems: listOfBreakfast)
                // Condition                           True  False
                .opacity(isBreakfastRecommendationShowing ? 1.0 : 0.0)
                
                FoodSuggestionView(listOfMenuItems: listOfLunch)
                // Condition                        True  False
                .opacity(isLunchRecommendationShowing ? 1.0 : 0.0)
                
                FoodSuggestionView(listOfMenuItems: listOfDinner)
                // Condition                         True  False
                .opacity(isDinnerRecommendationShowing ? 1.0 : 0.0)
            }
            
            Spacer()
        }
        .navigationTitle("Menu Decider")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

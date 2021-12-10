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
    @State var isRecommendationShowing = false
    
    // MARK: Computed Properties
    var body: some View {
        VStack {
            // Three buttons
            HStack {
                Button(action: {
                  isRecommendationShowing = true
                }, label: {
                    Text("Breakfast")
                        .foregroundColor(.primary)
                        .font(.title2)
                })
                
                Button(action: {
                    print("Lunch recommendation")
                }, label: {
                    Text("Lunch")
                        .foregroundColor(.primary)
                        .font(.title2)
                })
                
                Button(action: {
                    print("Dinner recommendation")
                }, label: {
                    Text("Dinner")
                        .foregroundColor(.primary)
                        .font(.title2)
                })
            }
            .buttonStyle(.bordered)
            
            .padding()
            
            // Menu Recommendation
            Text(currentMenuForBreakfast.recommendation)
                .font(.title)
            // Condition                   True  False
            .opacity(isRecommendationShowing ? 1.0 : 0.0)
            
            // Refresh button
            Button(action: {
                currentMenuForBreakfast = listOfBreakfast.randomElement()!
            }, label: {
                Image(systemName: "arrow.2.squarepath")
                    .foregroundColor(.primary)
                    .font(.title2)
            })
                .buttonStyle(.bordered)
                // Condition                   True  False
                .opacity(isRecommendationShowing ? 1.0 : 0.0)
                .padding()
            
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

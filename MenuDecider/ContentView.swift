//
//  ContentView.swift
//  MenuDecider
//
//  Created by Eunbi Shin on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Three buttons
            HStack {
                Button(action: {
                    print("Breakfast recommendation")
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
            Text("Omelette")
                .font(.title)
            
            // Refresh button
            Button(action: {
                print("Refresh")
            }, label: {
                Image(systemName: "arrow.2.squarepath")
                    .foregroundColor(.primary)
                    .font(.title2)
            })
                .buttonStyle(.bordered)
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

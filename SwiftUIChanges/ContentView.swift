//
//  ContentView.swift
//  SwiftUIChanges
//
//  Created by Lori Rothermel on 12/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    @State private var isOn: Bool = false
    
    
    var body: some View {
        VStack {
            
            Toggle(isOn: $isOn) {
                Text("Light")
                    .font(.largeTitle)
            }  // Toggle
            .tint(.red)
            .padding(.bottom, 25)
            
            Text("\(count)")
                .font(.largeTitle)
            
            Button(isOn ? "ON - Increment" : "OFF") {
                count = count + 1
            }  // Button
            .buttonStyle(.borderedProminent)
        }  // VStack
        .padding()
        
    }  // some View
    
}  // ContentView

#Preview {
    ContentView()
}

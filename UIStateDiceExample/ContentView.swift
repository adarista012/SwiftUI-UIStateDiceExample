//
//  ContentView.swift
//  UIStateDiceExample
//
//  Created by antonio dante arista rivas on 5/13/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
           
            Text("Dice Roller")
                .font(.largeTitle
                    .lowercaseSmallCaps())
                .foregroundStyle(.white)
            HStack{
                ForEach( 1...numberOfDice, id: \.description){ _ in
                    DiceView()
                }
            }
            
            HStack{
                Button("Remove dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                    
                }
                .disabled(numberOfDice == 1)
                
                
                Button("Add dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
            .symbolRenderingMode(.hierarchical)

        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
    
    
    
}

#Preview {
    ContentView()
}

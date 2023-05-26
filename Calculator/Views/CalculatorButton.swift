//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Iris GalGal on 5/22/23.
//

import SwiftUI

struct CalculatorButton: View{
    @EnvironmentObject var calculator: Calculator

    var label: String
    var color: Color
    
    var body: some View{
        Button(action: {
            calculator.buttonPressed(label: label)
        }) {
            ZStack{
                Circle()
                    .fill(color)
                Text(label)
                    .font(.title)
                    .bold()
            }
            .accentColor(.white)
        }
    }
}
struct CalculatorButton_Previews: PreviewProvider{
    static var previews: some View{
        CalculatorButton(label: "1", color: .orange)
            .previewLayout(.fixed(width: 100, height: 100))
            .environmentObject(Calculator())
    }
}

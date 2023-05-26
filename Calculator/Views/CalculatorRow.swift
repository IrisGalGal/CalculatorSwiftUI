//
//  CalculatorRow.swift
//  Calculator
//
//  Created by Iris GalGal on 5/22/23.
//

import SwiftUI

let columCount = 4

struct CalculatorRow: View {
    var labels = ["","","",""]
    var colors: [Color] = [.gray,.gray,.gray,.orange]
    
    
    var body: some View {
        HStack(spacing: 10){
            ForEach(0..<columCount){ index in
                CalculatorButton(label: labels[index], color: colors[index])
            }
        }
    }
}

struct CalculatorRow_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorRow(labels: ["1","2","3","+"])
            .previewLayout(.fixed(width: 300, height: 100))
    }
}

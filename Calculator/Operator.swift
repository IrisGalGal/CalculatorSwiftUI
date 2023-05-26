//
//  Operator.swift
//  Calculator
//
//  Created by Iris GalGal on 5/23/23.
//

import Foundation

class Operator{
    
    var op: (Double, Double) -> Double
    var isDivision = false
    
    init(_ string: String){
        if string == "+"{
            self.op = (+)
            
        }else if string == "-"{
            self.op = (-)
            
        }else if string == "\u{00d7}" {
            self.op = (*)
        }else {
            self.op = (/)
            self.isDivision = true
        }
    }
}

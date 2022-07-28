//
//  calculatorModel.swift
//  calculator
//
//  Created by Hitesh Choudhary on 28/07/22.
//

import Foundation
import SwiftUI

enum Keys: String{
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "÷"
    case multiply = "x"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    
    var buttonColor:Color {
        switch self {
        case .add, .subtract, .multiply, .divide, .equal:
            return Color("Voperator")
        case .clear, .negative, .percent:
            return Color("Hoperator")
        default:
            return Color("num")
        }
    }
}


enum Operation {
    case add, subtract, multiply, divide, none
}

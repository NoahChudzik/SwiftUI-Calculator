//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Noah Chudzik on 9/14/26.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//declare empty numbers array
var numbers: [Int] = []

//declare empy operators array
var operators: [String] = []

//append the number in the numbers array
func inputNum(num: Int) {
    numbers.append(num)
}

//append the operator in the operator array
func inputOp(op: String) {
    operators.append(op)
}


    



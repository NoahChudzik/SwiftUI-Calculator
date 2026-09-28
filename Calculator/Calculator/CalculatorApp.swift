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

enum Operation {
    case add
    case subtract
    case multiply
    case divide
}

enum Token {
    case number (Double)
    case operation (Operation)
}

var tokens: [Token] = []



func input (input: Int ) {
    
}

func operation (operation: Operation) {
    
}



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


enum Operation { // enum for adding an operation
    case add
    case subtract
    case multiply
    case divide
}

enum Token { //enum for the token
    case number (Double)
    case operation (Operation)
}

//creates an array of tokens I can use to do math with
var tokens: [Token] = []

// creates an empty string to use as the current input
var currentInput: String = ""

// function to call when a button is pressed
func input (input: Int ) {
    
    // turns the value of the button pressed into a string and appends it to our currentInput string
    currentInput.append(String(input))

    
}

//function for adding an operation
func operate (operation: Operation) {
    
    // if currentInput is a valid string, create the double value
    if let value = Double(currentInput) {
        
        
        
        //append the value into the tokens array
        tokens.append(.number(value))
        
        //append the operation into the tokens array
        tokens.append(.operation(operation))
    }
        
        // reset the string
        currentInput = ""
        
}

func evaluate() -> Double {
    guard case .number(let first) = tokens[0] else { return 0 }
    
    var result = first
    var i = 1
    
    while i < tokens.count {
        if case .operation(let op) = tokens[i], case .number(let next) = tokens[i + 1] {
            
            switch op {
            case .add: result += next
                
            case .subtract: result -= next
                
            case .multiply: result *= next
                
            case .divide: result /= next
                
                
            i += 2
                
            
            }
            
            
        }
        
    }
    
    return result
    
}


func equals() {
    // if currentInput is a valid string, create the double value
    if let value = Double(currentInput) {
        
        //append the value into the tokens array
        tokens.append(.number(value))
    }
    
    currentInput = String(evaluate())
    
    currentInput = ""
    
}



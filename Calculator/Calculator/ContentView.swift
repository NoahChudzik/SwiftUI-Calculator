//: # xcode: set sdk=iOS

//
//  ContentView.swift
//  Calculator
//
//  Created by Noah Chudzik on 9/14/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("My Calculator")
                .font(.largeTitle)
        }
            Spacer()
            Spacer()
        HStack {
            Button("1") { //button in wrong spot
                input(input: 1)
            }
            
            .padding(30)
            .font(.system(size: 40))
            .background(Color.orange)
            .foregroundColor(.black)
            .cornerRadius(10)
            .frame(maxWidth: .infinity, alignment: .center)
            
            
            
            Button("2") { //button currently in wrong spot
                input(input: 2)
                
            }
            .padding(30)
            .font(.system(size:40))
            .background(Color.orange)
            .foregroundColor(.black)
            .cornerRadius(10)
            .padding(.trailing, 75)
            
        }

        Button("+") { //button in wrong spot
            
            operate(operation: .add)
            
        }
        .padding(30)
        .font(.system(size:40))
        .background(Color.gray)
        .foregroundColor(.black)
        .cornerRadius(10)
        
            
            Spacer()
        
    }
}

#Preview {
    ContentView()
}

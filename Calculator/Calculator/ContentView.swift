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
            Button("1") {
                
            }
            
            .padding(30)
            .font(.system(size: 40))
            .background(Color.orange)
            .foregroundColor(.black)
            .cornerRadius(10)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.trailing, 150)
            
            
            
            Button("2") { //button currently in wrong spot
                
            }
            .padding(30)
            .font(.system(size:40))
            .background(Color.orange)
            .foregroundColor(.black)
            .cornerRadius(10)
            
        }
                
                
            
        
            
        Spacer()
        Spacer()
        Spacer()
        
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Stanislav Demyanov on 23.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var numberOfPressed = 0
    @State private var opacityValueRed = 0.25
    @State private var opacityValueYellow = 0.25
    @State private var opacityValueGreen = 0.25
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                ColorCircle(color: .red)
                    .opacity(opacityValueRed)
                    .padding(.top, 20)
                ColorCircle(color: .yellow)
                    .padding(.top, 20)
                    .opacity(opacityValueYellow)
                ColorCircle(color: .green)
                    .padding(.top, 20)
                    .padding(.bottom, 150)
                    .opacity(opacityValueGreen)
                
                buttonLight
            }
        }
    }
    
    private var buttonLight: some View {
        Button(action: {
            buttonTitle = "NEXT"
            
            if numberOfPressed == 0 {
                opacityValueRed = 1
                opacityValueGreen = 0.25
                numberOfPressed += 1
            } else if numberOfPressed == 1 {
                opacityValueRed = 0.25
                opacityValueYellow = 1
                numberOfPressed += 1
            } else {
                opacityValueYellow = 0.25
                opacityValueGreen = 1
                numberOfPressed = 0
            }
        }) {
            Text(buttonTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(width: 150, height: 50)
                .background(Color.blue
                    .cornerRadius(25))
                .foregroundColor(.white)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


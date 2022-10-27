//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Stanislav Demyanov on 23.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var opacityValueRed = 0.25
    @State private var opacityValueYellow = 0.25
    @State private var opacityValueGreen = 0.25
    @State private var numberOfPressed = 0
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                ColorCircle(color: .red,
                            opacity: opacityValueRed)
                .padding(.top, 20)
                ColorCircle(color: .yellow,
                            opacity: opacityValueYellow)
                .padding(.top, 20)
                ColorCircle(color: .green,
                            opacity: opacityValueGreen)
                .padding(.top, 20)
                .padding(.bottom, 150)
                
                buttonLight
            }
        }
    }
    
    private var buttonLight: some View {
        Button(action: {
            buttonTitle = "NEXT"
            changeColor()
        })
        {
            Text(buttonTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(width: 150, height: 50)
                .foregroundColor(.white)
        }
        .background(Color.blue
            .cornerRadius(25))
        .overlay {
            RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
                .stroke(Color.white, lineWidth: 8)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    private func changeColor() {
        switch numberOfPressed {
        case 0:
            opacityValueRed = 1
            opacityValueGreen = 0.25
            numberOfPressed += 1
        case 1:
            opacityValueRed = 0.25
            opacityValueYellow = 1
            numberOfPressed += 1
        case 2:
            opacityValueYellow = 0.25
            opacityValueGreen = 1
            numberOfPressed = 0
        default:
            break
        }
    }
}


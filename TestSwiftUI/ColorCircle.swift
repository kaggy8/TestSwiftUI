//
//  ColorCircle.swift
//  TestSwiftUI
//
//  Created by Stanislav Demyanov on 24.10.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 8))
            .opacity(opacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.25)
    }
}

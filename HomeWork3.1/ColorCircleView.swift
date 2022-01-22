//
//  ColorCircleView.swift
//  HomeWork3.1
//
//  Created by Artur Anissimov on 22.01.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .padding()
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1)
    }
}

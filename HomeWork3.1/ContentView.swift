//
//  ContentView.swift
//  HomeWork3.1
//
//  Created by Artur Anissimov on 22.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redView = ColorCircleView(color: .red, opacity: 0.3)
    @State private var yellowView = ColorCircleView(color: .yellow, opacity: 0.3)
    @State private var greenView = ColorCircleView(color: .green, opacity: 0.3)
    
    @State private var buttonTag = 0
    @State private var buttonTitle = "START"
    
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    redView
                    yellowView
                    greenView
                }
                
                Spacer()
                
                btnSettings

            }
            .padding()
        }
        
    }
    
    private var btnSettings: some View {
        Button {
            buttonAction()
        } label: {
            Text(buttonTitle)
                .frame(width: 175, height: 35)
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.white, lineWidth: 5)
                )
        }
        .background(Color.blue)
        .cornerRadius(25)
    }
    
    private func buttonAction() {
        switch buttonTag {
        case 0:
            greenView.opacity = 0.3
            redView.opacity = 1
            buttonTitle = "NEXT"
            buttonTag = 1
        case 1:
            redView.opacity = 0.3
            yellowView.opacity = 1
            buttonTag = 2
        default:
            yellowView.opacity = 0.3
            greenView.opacity = 1
            buttonTag = 0
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

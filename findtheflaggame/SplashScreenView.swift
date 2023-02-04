//
//  SplashScreenView.swift
//  WaveInvest
//
//  Created by Théo Ajavon on 29/01/2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @Environment(\.colorScheme) var colorScheme

    
    @State private var isActive = false
//    @State private var fill: CGFloat = 0.7
    @State private var size = 0.6
    @State private var circleSize = 0.0
    @State private var opacity = 0.4
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                if colorScheme == .light {
                    Color.white
                        .ignoresSafeArea()
                } else {
                    Color.black
                        .ignoresSafeArea()
                }
                
                
                VStack{
                    VStack(spacing: 1){
                        Image("section7")
                            .resizable()
                            .clipShape(Circle())
                        
                            .frame(width: colorScheme == .light ? 250 : 220, height: colorScheme == .light ? 250 : 220)
                        
                        Text("Mission-01")
                            .italic()
                            .font(Font.custom("Baskerville-Bold", size: 46))
                            .foregroundColor(.purple)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 0.8)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                        withAnimation(.easeIn(duration: 3)) {
                            self.circleSize += 1
                        }
                    }
                    
                }
                //                .background(Color(.black))
                .edgesIgnoringSafeArea(.all)
                
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        withAnimation{
                            self.isActive = true
//                            print(self.circleSize)
                        }
                    }
                }

//                //Animation Circle
                Circle()
                    .trim(from: 0, to: self.circleSize)
                    .stroke(Color.purple, style: StrokeStyle(lineWidth: 2))
                    .frame(width: 350, height: 350)
                    .rotationEffect(.init(degrees: -90))
////                    .animation(.default)
            }
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

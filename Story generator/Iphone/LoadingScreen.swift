//
//  LoadingScreen.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/15/23.
//

import SwiftUI

struct LoadingScreen: View {
    @State private var isRotating = false
    var body: some View {
        ZStack{
            Color.BackgroundLoading
                .ignoresSafeArea()
            VStack{
                Image("BackgroundIllustration")
                    .resizable()
                    .frame(width: 390 * sizeScreenIphone(), height: 510 * sizeScreenIphone())
                Spacer()
            }
            .ignoresSafeArea()
            VStack{
                Image("Logo")
                    .resizable()
                    .frame(width: 350 * sizeScreenIphone(), height: 323 * sizeScreenIphone())
                    .offset(x: 0, y: 30 * sizeScreenIphone())
            }
            VStack{
                
                Spacer()
                Image("Loading")
                    .resizable()
                    .frame(width:90 * sizeScreenIphone(), height: 90 * sizeScreenIphone())
                    .rotationEffect(Angle(degrees: isRotating ? 360 : 0))
                    .onAppear {
                               withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                                   isRotating = true
                               }
                           }
                Image("AppName")
                    .resizable()
                    .frame(width:241 * sizeScreenIphone(), height: 109 * sizeScreenIphone())
                
                Text("Turning Ideas into Magical Stories")
                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                    .frame(width: 275 * sizeScreenIphone(), height: 21 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                    .padding()
            }
        }
    }
}

struct LoadingScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreen()
    }
}

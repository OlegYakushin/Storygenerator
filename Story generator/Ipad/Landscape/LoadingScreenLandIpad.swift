//
//  LoadingScreenLandIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct LoadingScreenLandIpad: View {
    @State private var isRotating = false
    var body: some View {
        ZStack{
            Color.Background
                .ignoresSafeArea()
                
            VStack{
                Spacer()
                Image("BackgroundIllustrationLandIpad")
                    .resizable()
                    .scaledToFit()
                
            }
            .ignoresSafeArea()
            VStack{
                Image("LogoIpadLand")
                    .resizable()
                    .frame(width: 498 * sizeScreenIpad() , height: 381 * sizeScreenIpad())
                    .offset(x: 0, y: -150 * sizeScreenIpad())
            }
            VStack{
                Spacer()
          
                Image("Loading")
                    .resizable()
                    .frame(width: 90 * sizeScreenIpad(), height: 90 * sizeScreenIpad())
                    .rotationEffect(Angle(degrees: isRotating ? 360 : 0))
                    .onAppear {
                        withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                            isRotating = true
                        }
                    }
                    .padding()
                Image("AppNameIpad")
                    .resizable()
                    .frame(width: 437 * sizeScreenIpad(), height: 58 * sizeScreenIpad())
                
                Text("Turning Ideas into Magical Stories")
                    .font(.custom("Ubuntu-Regular", size:20 * sizeScreenIpad()))
                   
                    .frame(width: 305 * sizeScreenIpad(), height: 23 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                    .padding()
                
            }
            .offset(x: 0, y: -80 * sizeScreenIpad())
           
        }
    }
}

struct LoadingScreenLandIpad_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenLandIpad()
          
            
    }
}

//
//  LoadingScreenLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct LoadingScreenLand: View {
    @State private var isRotating = false
    var body: some View {
        ZStack{
            Color.Background
                .ignoresSafeArea()
            VStack{
                Image("BackgroundIllustrationLand")
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: 20 * sizeScreenIphone())
            }
            .ignoresSafeArea()
            VStack{
                Image("AppNameLand")
                    .resizable()
                    .frame(width:371.75 * sizeScreenIphone(), height: 71 * sizeScreenIphone())
                Text("Turning Ideas into Magical Stories")
                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                    .frame(width: 275 * sizeScreenIphone(), height:21  * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
         
            }
            .offset(x: 0, y: -120 * sizeScreenIphone())
            
            VStack{
                Image("Loading")
                        .resizable()
                        .frame(width: 70 * sizeScreenIphone(), height: 70 * sizeScreenIphone())
                        .rotationEffect(Angle(degrees: isRotating ? 360 : 0))
                        .offset(x: 0, y: 40 * sizeScreenIphone())
                        .onAppear {
                            withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                                isRotating = true
                            }
                        }
                Image("Logo")
                    .resizable()
                    .frame(width:300  * sizeScreenIphone(), height:277.29 * sizeScreenIphone())
                   
            }
            .offset(x: 0, y:80 * sizeScreenIphone())
            
        }
    }
}

struct LoadingScreenLand_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

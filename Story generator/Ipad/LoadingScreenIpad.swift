//
//  LoadingScreenIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct LoadingScreenIpad: View {
    @State private var isRotating = false
    var body: some View {
        
        ZStack{
            
            
            VStack{
                Image("BackgroundIllustrationIpad")
                    .resizable()
                    .frame(width: 834 * sizeScreenIpad(), height: 868 * sizeScreenIpad())
                
                
              Spacer()
            }
            .ignoresSafeArea()
            
        
                        VStack{
             
                Image("LogoIpad")
                    .resizable()
                    .frame(width: 700 * sizeScreenIpad(), height: 647 * sizeScreenIpad())
                    .overlay(
                        
                        
                        
                        VStack{
                            Spacer()
                            
                            Image("Loading")
                                    .resizable()
                                    .frame(width: 90 * sizeScreenIpad(), height: 90 * sizeScreenIpad())
                                    .rotationEffect(Angle(degrees: isRotating ? 360 : 0))
                                    .padding()
                                    .onAppear {
                                        withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                                            isRotating = true
                                        }
                                    }
                        }
                    )
             
                    Image("AppNameIpad")
                        .resizable()
                        .frame(width: 437 * sizeScreenIpad(), height: 58 * sizeScreenIpad())
                    
                    Text("Turning Ideas into Magical Stories")
                        .font(.custom("Ubuntu-Regular", size:20))
                    
                        .frame(width:305 * sizeScreenIpad(), height: 23 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        .padding()
                    
                    
                }
                        .offset(x:0,y:160 * sizeScreenIpad())
               
            }
        
    }
}


struct LoadingScreenIpad_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenIpad()
    }
}

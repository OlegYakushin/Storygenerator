//
//  MainScreenIpadGeneratingLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct MainScreenIpadGeneratingLand: View {
    @State private var progress: CGFloat = 0.0
    @State private var duration: Double = 10
    var body: some View {
      
        ZStack{
            Color.Background
                .ignoresSafeArea()
            
  

            VStack{
                Spacer()
                Image("BackgroundIpadLand")
                    .resizable()
                    .scaledToFit()
                
            }
            .ignoresSafeArea()
            
            VStack{
                TopMenuIpadLandscapeView()
                    
                    .offset(x: 24 * sizeScreenIpad(), y: 0)
                
                Spacer()
            }
            VStack{
                
                Text("Create your first story!")
                    .font(.custom("Baloo-Regular", size:55 * sizeScreenIpad()))
                    .kerning(-0.05 * 55 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                
                Text("What is your story about?")
                    .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                    .kerning(-0.05 * 22 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                
            }
            .offset(x: 0, y: -250 * sizeScreenIpad())
            
            VStack{
                
                Text("Tell me a story about a princess and...")
                    .font(.custom("Ubuntu-Bold", size:30 * sizeScreenIpad()))
                    .kerning(-0.05 * 30 * sizeScreenIpad())
                    .frame(width: 284 * sizeScreenIpad(), height: 68 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                    .multilineTextAlignment(.center)

                
            }
            
                VStack{
                    Spacer()
                    
                    ZStack{
                        Button(action: {}) {
                            Image("MicPressed")
                                .resizable()
                                .frame(width: 192.22 * sizeScreenIpad(), height: 191.05 * sizeScreenIpad())
                        }
                        
                        Circle()
                            .trim(from: 0, to: progress)
                            .stroke(Color.Pink, style: StrokeStyle(lineWidth: 9 * sizeScreenIpad(), lineCap: .round))
                            .rotationEffect(.degrees(-90))
                        
                            .frame(width: 198 * sizeScreenIpad(), height: 198 * sizeScreenIpad())
                            .onAppear {
                                withAnimation(.linear(duration: duration)) {
                                    progress = 1.0
                                }
                            }
                        
                    }
                        }
                .offset(x: 0, y: -50 * sizeScreenIpad())
            
                    
                 
            
    }
    }
}

struct MainScreenIpadGeneratingLand_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenIpadGeneratingLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

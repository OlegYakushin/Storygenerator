//
//  ListenAnswer2Ipadland.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct ListenAnswer2Ipadland: View {
    
    
    
    var body: some View {
        ZStack{
            Color.BackgroundPink
                .ignoresSafeArea()
        
            VStack{
                TopMenuIpadLandscapeView()
                    .offset(x: 24 * sizeScreenIpad(), y: 0)
                
                Spacer()
            
                HStack{
                    Image("Dragon")
                        .resizable()
                        .frame(width: 633 * sizeScreenIpad(), height: 525 * sizeScreenIpad())
                        .offset(x: 0, y: -UIScreen.main.bounds.width * 120/834)
                    
                    VStack{
                        
                        Text("Once upon a time, a little princess lived in a huge castle on the mountain.")
                            .font(.custom("Ubuntu-Bold", size:25 * sizeScreenIpad()))
                        
                            .kerning(-0.05 * 25 * sizeScreenIpad())
                            .frame(width: 333 * sizeScreenIpad(), height: 87 * sizeScreenIpad())
                     
                        
                            .foregroundColor(Color.BlueShadow)
                        
                        
                            .multilineTextAlignment(.center)
                            .opacity(0.7)
                            .offset(x: 0, y: -50 * sizeScreenIpad())
                        
                        
                        HStack{
                            Button(action: {}) {
                                Image("Left")
                                    .resizable()
                                    .frame(width: 35 * sizeScreenIpad(), height: 35 * sizeScreenIpad())
                                
                                    .offset(x: 0, y: -10 * sizeScreenIpad())
                            }
                            
                            
                            VStack {
                                Button(action: {}) {
                                    Button(action: {}) {
                                        ZStack {
                                            
                                            Circle()
                                                .frame(width: 130 * sizeScreenIpad(), height: 130 * sizeScreenIpad())
                                                .foregroundColor(Color.PinkListenLight)
                                                .overlay(
                                                    Circle()
                                                        .frame(width: 82.73 * sizeScreenIpad(), height: 82.73 * sizeScreenIpad())
                                                        .foregroundColor(Color.BlueBottomSelected)
                                                        .overlay(
                                                            HStack{
                                                                RoundedRectangle(cornerRadius: 5 * sizeScreenIpad())
                                                                    .frame(width: 9.45 * sizeScreenIpad(), height: 29.55 * sizeScreenIpad())
                                                                    .padding(.trailing, -3 * sizeScreenIpad())
                                                                    .foregroundColor(Color.BlueShadow)
                                                                RoundedRectangle(cornerRadius: 5 * sizeScreenIpad())
                                                                    .frame(width: 9.45 * sizeScreenIpad(), height: 29.55 * sizeScreenIpad())
                                                                    .foregroundColor(Color.BlueShadow)
                                                            }
                                                        )
                                                )
                                            
                                        }
                                    }
                                }
                                
                                Text("Pause")
                                    .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                                    .foregroundColor(Color.BlueShadow)
                                    .kerning(-0.05 * 22 * sizeScreenIpad())
                                    .opacity(0.7)
                                
                            }
                            .padding(.horizontal, 80 * sizeScreenIpad())
                            
                            Button(action: {}) {
                                Image("Right")
                                
                                    .resizable()
                                    .frame(width: 35 * sizeScreenIpad(), height: 35 * sizeScreenIpad())
                                    .offset(x: 0, y: -10 * sizeScreenIpad())
                                
                            }
                        }
                    }
                    
                }
            }
            
            }
        
    }
}

struct ListenAnswer2Ipadland_Previews: PreviewProvider {
    static var previews: some View {
        ListenAnswer2Ipadland()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

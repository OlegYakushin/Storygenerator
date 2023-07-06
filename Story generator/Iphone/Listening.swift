//
//  Listening.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/17/23.
//

import SwiftUI

struct Listening: View {
    
    @State private var progress: CGFloat = 0.75
    
    var body: some View {
        ZStack{
            Color.Background
                .ignoresSafeArea()
            
            RadialGradient(
                gradient: Gradient(colors: [
                    Color(#colorLiteral(red: 0.8039215686, green: 0.8274509804, blue: 1, alpha: 1)),
                    Color.clear
                ]),
                center: .topTrailing,
                startRadius: 0,
                endRadius: UIScreen.main.bounds.width * 0.6
            )
            .ignoresSafeArea()
            RadialGradient(
                gradient: Gradient(colors: [
                    Color(#colorLiteral(red: 0.8039215686, green: 0.8274509804, blue: 1, alpha: 1)),
                    Color.clear
                ]),
                center: UnitPoint(x: 0, y: 0.5),
                startRadius: 0,
                endRadius: UIScreen.main.bounds.height * 0.4
            )
            .ignoresSafeArea()
            VStack{
                TopMenuView()
                    .offset(x: 21 * sizeScreenIphone(), y: 0)
                
                Spacer()
                
                Image("Dragon")
                    .resizable()
                    .frame(width:337 * sizeScreenIphone(), height: 274 * sizeScreenIphone())
                    .offset(x: 0, y: -120 * sizeScreenIphone())
                
              
                    
                    Text("Once upon a time, a little princess lived in a huge castle on the mountain.")
                        .font(.custom("Ubuntu-Bold", size:25 * sizeScreenIphone()))
                        
                        .kerning(-0.05 * 25 * sizeScreenIphone())
                        .frame(width: 333 * sizeScreenIphone(), height: 87 * sizeScreenIphone())
                       
                       
                        .foregroundColor(Color.BlueShadow)
                        
                    
                        .multilineTextAlignment(.center)
                        .opacity(0.7)
                        .offset(x: 0, y: -50 * sizeScreenIphone())
                    
              
                Spacer()
               
              
            }
            VStack{
                Spacer()
                HStack{
                    Button(action: {}) {
                        Image("Left")
                            .resizable()
                            .frame(width: 24 * sizeScreenIphone(), height: 24 * sizeScreenIphone())
                            .padding(.horizontal, 40 * sizeScreenIphone())
                            .offset(x: 0, y: -10 * sizeScreenIphone())
                    }
                    Spacer()
                    
                        VStack {
                            Button(action: {}) {
                                ZStack {
                                    
                                    Circle()
                                        .frame(width: 110 * sizeScreenIphone(), height: 110 * sizeScreenIphone())
                                        .foregroundColor(Color.BluePause)
                                        .overlay(
                                            Circle()
                                                .frame(width: 58.33 * sizeScreenIphone(), height: 58.33 * sizeScreenIphone())
                                                .foregroundColor(Color.BlueBottomSelected)
                                                .overlay(
                                                    HStack{
                                                        RoundedRectangle(cornerRadius: 5 * sizeScreenIphone())
                                                            .frame(width: 8 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
                                                            .padding(.trailing, -3 * sizeScreenIphone())
                                                            .foregroundColor(Color.BlueShadow)
                                                        RoundedRectangle(cornerRadius: 5 * sizeScreenIphone())
                                                            .frame(width: 8 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
                                                            .foregroundColor(Color.BlueShadow)
                                                    }
                                                )
                                        )
                                    
                                }
                            }
                            
                            Text("Pause")
                                .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                                .foregroundColor(Color.BlueShadow)
                                .kerning(-0.05 * 18 * sizeScreenIphone())
                                .opacity(0.7)
                        
                    }
                    Spacer()
                    Button(action: {}) {
                        Image("Right")
                        
                            .resizable()
                            .frame(width: 24 * sizeScreenIphone(), height: 24 * sizeScreenIphone())
                            .offset(x: 0, y: -10 * sizeScreenIphone())
                            .padding(.horizontal, 40 * sizeScreenIphone())
                    }
                   
                }
            }
        }
    }
}

struct Listening_Previews: PreviewProvider {
    static var previews: some View {
        Listening()
    }
}

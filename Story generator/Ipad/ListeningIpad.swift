//
//  ListeningIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct ListeningIpad: View {
    
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
                TopMenuIpadView()
                    .offset(x: UIScreen.main.bounds.width * 34/834, y: 0)
                
                Spacer()
                
                Image("Dragon")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 633/834, height: UIScreen.main.bounds.width * 494/834)
                    .offset(x: 0, y: -UIScreen.main.bounds.width * 120/834)
                
              
                    
                    Text("Once upon a time, a little princess lived in a huge castle on the mountain.")
                        .font(.custom("Ubuntu-Bold", size:25 * sizeScreenIpad()))
                        
                        .kerning(-0.05 * 25 * sizeScreenIpad())
                        .frame(width: 333 * sizeScreenIpad(), height: 87 * sizeScreenIpad())
                  
                       
                        .foregroundColor(Color.BlueShadow)
                        
                    
                        .multilineTextAlignment(.center)
                        .opacity(0.7)
                        .offset(x: 0, y: -50 * sizeScreenIpad())
                    
              
                Spacer()
               
              
            }
            VStack{
                Spacer()
                HStack{
                    Button(action: {}) {
                        Image("Left")
                            .resizable()
                            .frame(width: 35 * sizeScreenIpad(), height: 35 * sizeScreenIpad())
                            
                            .offset(x: 0, y: -10 * sizeScreenIpad())
                    }
                   
                    
                        VStack {
                            Button(action: {}) {
                                ZStack {
                                    
                                    Circle()
                                        .frame(width: 230 * sizeScreenIpad(), height: 130 * sizeScreenIpad())
                                        .foregroundColor(Color.BluePause)
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

struct ListeningIpad_Previews: PreviewProvider {
    static var previews: some View {
        ListeningIpad()
    }
}

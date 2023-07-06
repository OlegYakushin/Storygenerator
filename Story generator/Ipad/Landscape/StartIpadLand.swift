//
//  StartIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct StartIpadLand: View {
    @State private var progress: CGFloat = 0.0
    @State private var duration: Double = 10
    var body: some View {
        ZStack{
            Color.Background
                .ignoresSafeArea()
          
            VStack(alignment: .leading){
                TopMenuIpadLandscapeView()
                    .offset(x: 24 * sizeScreenIpad(), y: 0)
                Spacer()
                
            }
            
                
            VStack(alignment: .leading){
                
                Text("A story about a princess and a dragon")
                    .font(.custom("Baloo", size:50 * sizeScreenIpad()))
                    ._lineHeightMultiple(40/60)
                    .kerning(-0.05 * 50 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                    
                
            }
            .offset(x: -200 * sizeScreenIpad(), y: -220)
           
                HStack{
                    
                    Image("Dragon")
                        .resizable()
                        .frame(width: 633 * sizeScreenIpad(), height: 494 * sizeScreenIpad())
                        .padding(50 * sizeScreenIpad())
                        
                  
                    
                    
               
                   
                       
                        HStack(alignment: .bottom){
                            
                            VStack{
                                Button(action: {}) {
                                    Circle()
                                        .frame(width: 111 * sizeScreenIpad(), height: 111 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueBottomSelected)
                                        .overlay(
                                            Circle()
                                                .foregroundColor(Color.QuitBlue)
                                                .frame(width: 71 * sizeScreenIpad(), height: 71 * sizeScreenIpad())
                                                .overlay(
                                                    Image("CloseQuit")
                                                        .resizable()
                                                        .frame(width: 23.6 * sizeScreenIpad(), height: 23.6 * sizeScreenIpad())
                                                )
                                            
                                        )
                                }
                                
                                Text("Quit")
                                    .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                                    .foregroundColor(Color.BlueShadow)
                                    .kerning(-0.05 * 22 * sizeScreenIpad())
                                    .opacity(0.7)
                                
                            }
                            .padding(.horizontal, 20 * sizeScreenIpad())
                            VStack {
                                Button(action: {}) {
                                    ZStack {
                                        
                                        Circle()
                                            .frame(width: 145 * sizeScreenIpad(), height: 146 * sizeScreenIpad())
                                            .foregroundColor(Color.PinkListenLight)
                                            .overlay(
                                                Circle()
                                                    .frame(width: 77.5 * sizeScreenIpad(), height: 77.5 * sizeScreenIpad())
                                                    .foregroundColor(Color.PinkListen)
                                                    .overlay(
                                                        
                                                        Image("Play")
                                                            .resizable()
                                                            .frame(width:29.07 * sizeScreenIpad(), height:30.57 * sizeScreenIpad())
                                                    )
                                            )
                                        Circle()
                                            .trim(from: 0, to: progress)
                                            .stroke(Color.Pink, lineWidth: 9 * sizeScreenIpad())
                                            .rotationEffect(.degrees(-90))
                                        
                                            .frame(width:145 * sizeScreenIpad(), height: 146 * sizeScreenIpad())
                                            .onAppear {
                                                withAnimation(.linear(duration: duration)) {
                                                    progress = 1.0
                                                }
                                            }
                                    }
                                }
                                
                                Text("Listen")
                                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                                    .foregroundColor(Color.BlueShadow)
                                    .kerning(-0.05 * 18 * sizeScreenIpad())
                                    .opacity(0.7)
                            }
                            .padding(.horizontal, 20 * sizeScreenIpad())
                            
                        }
                    
                    
                }
                .offset(x: -80 * sizeScreenIpad(), y: 100)
        }
    }
}

struct StartIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        StartIpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

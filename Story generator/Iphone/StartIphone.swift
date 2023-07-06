//
//  StartIphone.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/15/23.
//

import SwiftUI

struct StartIphone: View {
    @State private var progress: CGFloat = 0.0
    @State private var duration: Double = 10
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
                    .offset(x:21 * sizeScreenIphone(), y: 0)
                
                Spacer()
                
                Image("Dragon")
                    .resizable()
                    .frame(width: 337 * sizeScreenIphone(), height: 274 * sizeScreenIphone())
                    .offset(x: 0, y: -120 * sizeScreenIphone())
                
           
               
                Text("A story about a princess and a dragon")
                    .font(.custom("Baloo", size:35 * sizeScreenIphone()))
                    ._lineHeightMultiple(40/60)
                    .kerning(-0.05 * 35 * sizeScreenIphone())
                    .frame(width: 362 * sizeScreenIphone(), height: 80 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -50 * sizeScreenIphone())
                Spacer()
               
              
            }
            VStack{
                Spacer()
                HStack(alignment: .bottom){
                    
                        VStack{
                            Button(action: {}) {
                            Circle()
                                .frame(width: 84 * sizeScreenIphone(), height: 84 * sizeScreenIphone())
                                .foregroundColor(Color.BlueBottomSelected)
                                .overlay(
                                    Circle()
                                        .foregroundColor(Color.QuitBlue)
                                        .frame(width: 53.33 * sizeScreenIphone(), height: 53.33 * sizeScreenIphone())
                                        .overlay(
                                            Image("CloseQuit")
                                                .resizable()
                                                .frame(width: 17.88 * sizeScreenIphone(), height: 17.88 * sizeScreenIphone())
                                        )
                                    
                                )
                        }
                            
                            Text("Quit")
                                .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                                .foregroundColor(Color.BlueShadow)
                                .kerning(-0.05 * 18 * sizeScreenIphone())
                                .opacity(0.7)
                            
                        }
                    
                    .padding(.horizontal, 20 * sizeScreenIphone())
                    VStack {
                        Button(action: {}) {
                            ZStack {
                                
                                Circle()
                                    .frame(width: 110 * sizeScreenIphone(), height: 110 * sizeScreenIphone())
                                    .foregroundColor(Color.PinkListenLight)
                                    .overlay(
                                        Circle()
                                            .frame(width:58.33 * sizeScreenIphone(), height: 58.33 * sizeScreenIphone())
                                            .foregroundColor(Color.PinkListen)
                                            .overlay(
                                                
                                                Image("Play")
                                                    .resizable()
                                                    .frame(width: 21.88 * sizeScreenIphone(), height: 23.88 * sizeScreenIphone())
                                            )
                                    )
                                Circle()
                                    .trim(from: 0, to: progress)
                                    .stroke(Color.Pink, lineWidth: 6)
                                    .rotationEffect(.degrees(-90))
                                
                                    .frame(width: 110 * sizeScreenIphone(), height: 110 * sizeScreenIphone())
                                    .onAppear {
                                        withAnimation(.linear(duration: duration)) {
                                            progress = 1.0
                                        }
                                    }
                            }
                        }
                        
                        Text("Listen")
                            .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                            .foregroundColor(Color.BlueShadow)
                            .kerning(-0.05 * 18 * sizeScreenIphone())
                            .opacity(0.7)
                    }
                    .padding(.horizontal, 20 * sizeScreenIphone())
                   
                }
            }
        }
    }
}

struct StartIphone_Previews: PreviewProvider {
    static var previews: some View {
        StartIphone()
    }
}

//
//  ListenAnswerland.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct ListenAnswerland: View {
    @State private var progress: CGFloat = 0.0
    @State private var duration: Double = 10
    
    var body: some View {
        NavigationStack{
        ZStack{
            Color.BackgroundPink
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                TopMenuLandscapeView()
                    .offset(x: 33 * sizeScreenIphone(), y: 0)
                    .padding()
                
                Text("What happened with  the princess after?")
                    .font(.custom("Baloo", size:35 * sizeScreenIphone()))
                    .kerning(-0.05 * 35 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .padding(.horizontal, 30 * sizeScreenIphone())
                    .offset(x: 25 * sizeScreenIphone(), y: -33 * sizeScreenIphone())
                
                Spacer()
            }
            
            HStack{
                
                Image("Dragon")
                    .resizable()
                    .frame(width: 337 * sizeScreenIphone(), height: 235 * sizeScreenIphone())
                    .padding(50)
                
                
                
                
                
                
                
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
                    .padding(.horizontal, 20)
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
                                    .stroke(Color.Green, style: StrokeStyle(lineWidth: 6 * sizeScreenIpad(), lineCap: .round))
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
                    .padding(.horizontal, 20)
                    
                }
                
                
            }
            .offset(x: -70 * sizeScreenIphone(), y: 75)
            
            
            VStack{
                
                NavigationLink(destination: EmptyView()){
                    Image(systemName: "chevron.left")
                    
                        .opacity(0.7)
                        .foregroundColor(Color.BlueShadow)
                    
                    
                    Text("Back")
                        .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                        .foregroundColor(Color.BlueShadow)
                        .kerning(-0.05 * 18 * sizeScreenIphone())
                        .opacity(0.7)
                    
                    
                }
                
                Spacer()
                
            } .offset(x:-280 * sizeScreenIphone(),y: 30 * sizeScreenIphone())
        }
    }
}
}


struct ListenAnswerland_Previews: PreviewProvider {
    static var previews: some View {
        ListenAnswerland()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

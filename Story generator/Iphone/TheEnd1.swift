//
//  TheEnd1.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/17/23.
//

import SwiftUI

struct TheEnd1: View {
    var body: some View {
        
        ZStack(alignment: .top){
        
            Color.BackgroundPink
                .ignoresSafeArea()
         
            VStack{
                
                TopMenuView()
                    .offset(x: 21 * sizeScreenIphone(), y: 0)
                
                
                
                Spacer()
                Image("")
                    .overlay(
                Image("Book3")
                    .frame(width: 110 * sizeScreenIphone(), height: 110 * sizeScreenIphone())
                )
                    .frame(width: 170 * sizeScreenIphone(), height: 170 * sizeScreenIphone())
                
                Text("The end!")
                
                    .font(.custom("Baloo-Regular", size:35 * sizeScreenIphone()))
                    .kerning(-0.05 * 35 * sizeScreenIphone())
                    .frame(width: 297 * sizeScreenIphone(), height: 40 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                
                Text("You're doing great")
                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                    .kerning(-0.05 * 18 * sizeScreenIphone())
                    .frame(width: 285 * sizeScreenIphone(), height: 21 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                Spacer()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 15 * sizeScreenIphone()) {
                        CardView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                        CardView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
                        CardView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.LightPink)
                        
                    }
                    .padding(.leading, 37 * sizeScreenIphone())
                    
                    
                }
                Spacer()
                
                HStack(alignment: .bottom){
                    VStack{
                        Button(action: {}) {
                            
                            Image("Replay")
                                .resizable()
                                .frame(width: 70 * sizeScreenIphone(), height: 70 * sizeScreenIphone())
                            
                                .overlay(
                                    
                                    Image("Update")
                                        .resizable()
                                        .frame(width: 45 * sizeScreenIphone(), height: 45 * sizeScreenIphone())
                                        .alignmentGuide(HorizontalAlignment.center) { d in
                                            d[HorizontalAlignment.center]
                                        }
                                        .alignmentGuide(VerticalAlignment.center) { d in
                                            d[VerticalAlignment.center]
                                        }
                                )
                        }
                        
                        Text("Replay")
                            .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIphone()))
                            .kerning(-0.05 * 18 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                            .opacity(0.7)
                    }
                    VStack{
                        Button(action: {}) {
                            Image("Question")
                                .resizable()
                                .frame(width: 90 * sizeScreenIphone(), height: 90 * sizeScreenIphone())
                        }
                        HStack{
                            Text("3")
                                .font(.custom("Baloo-Regular", size: 18 * sizeScreenIphone()))
                                .kerning(-0.05 * 18 * sizeScreenIphone())
                                .foregroundColor(Color.BlueShadow)
                            Image("Coin")
                                .resizable()
                                .frame(width: 25 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
                        }
                        Text("Ask a question")
                            .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIphone()))
                            .kerning(-0.05 * 18 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                            .opacity(0.7)
                    }
                    VStack{
                        Button(action: {}) {
                            Image("Finish")
                                .resizable()
                                .frame(width: 70 * sizeScreenIphone(), height: 70 * sizeScreenIphone())
                                .overlay(
                                    Image("Check")
                                        .resizable()
                                        .frame(width: 45 * sizeScreenIphone(), height: 45 * sizeScreenIphone())
                                        .alignmentGuide(HorizontalAlignment.center) { d in
                                            d[HorizontalAlignment.center]
                                        }
                                        .alignmentGuide(VerticalAlignment.center) { d in
                                            d[VerticalAlignment.center]
                                        }
                                )
                        }
                        Text("Finish")
                            .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIphone()))
                            .kerning(-0.05 * 18 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                            .opacity(0.7)
                    }
                    
                    
                    
                }
                
                
                
                Button(action: {}) {
                    
                    
                    ButtonView(color: Color.Blue, colorText: Color.BlueShadow, colorShadow: Color.BlueShadow, text: "Finish", clearButton: false)
                }
            }
        }
        
        
        
    }
}

struct TheEnd1_Previews: PreviewProvider {
    static var previews: some View {
        TheEnd1()
    }
}

//
//  TheEndPink2Ipad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct TheEndPink2Ipad: View {
    var body: some View {
        ZStack(alignment: .top){
            Color.BackgroundPink
                .ignoresSafeArea()
            
            VStack{
               
                    TopMenuIpadView()
                    .offset(x: 34 * sizeScreenIpad(), y: 0)
                    
                    
                Spacer()
                
          
                HStack{
                    Text("+3")
                        .font(.custom("Baloo-Regular", size:36 * sizeScreenIpad()))
                        .kerning(-0.05 * 36 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .padding()
                    Image("Coin")
                        .resizable()
                        .frame(width: 55 * sizeScreenIpad(), height: 55 * sizeScreenIpad())
                    
                }
                
                    Text("The end")
                
                        .font(.custom("Baloo-Regular", size:55 * sizeScreenIpad()))
                        .kerning(-0.05 * 55 * sizeScreenIpad())
                        .frame(width: 629 * sizeScreenIpad(), height: 60 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        
                        
                    Text("Wanna ask any questions?")
                        .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                        .kerning(-0.05 * 22 * sizeScreenIpad())
                        .frame(width: 334 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                Spacer()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 42 * sizeScreenIpad()) {
                        CardIpadView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                        
                        
                        CardIpadView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
                        
                        CardIpadView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.LightPink)
                        
                        
                    }
                    .padding(.leading, 90 * sizeScreenIpad())
                }
                        
                    
               Spacer()
                VStack(spacing: -10 * sizeScreenIpad()){
                    HStack(alignment: .center, spacing: 50 * sizeScreenIpad()){
                        VStack{
                            Button(action: {}) {
                                Image("Replay")
                                    .resizable()
                                    .frame(width: 86 * sizeScreenIpad(), height: 88 * sizeScreenIpad())
                                
                                    .overlay(
                                        Image("Update")
                                            .resizable()
                                            .frame(width: 49.11 * sizeScreenIpad(), height: 50.29 * sizeScreenIpad())
                                            .alignmentGuide(HorizontalAlignment.center) { d in
                                                d[HorizontalAlignment.center]
                                            }
                                            .alignmentGuide(VerticalAlignment.center) { d in
                                                d[VerticalAlignment.center]
                                            }
                                    )
                            }
                            
                            Text("Replay")
                                .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIpad()))
                                .kerning(-0.05 * 18 * sizeScreenIpad())
                                .foregroundColor(Color.BlueShadow)
                                .opacity(0.7)
                        }
                        .padding()
                        VStack{
                            Button(action: {}) {
                                Image("QuestionIpad")
                                    .resizable()
                                    .frame(width: 120 * sizeScreenIpad(), height: 120 * sizeScreenIpad())
                                
                            }
                            HStack{
                                Text("3")
                                    .font(.custom("Baloo-Regular", size: 22 * sizeScreenIpad()))
                                    .kerning(-0.05 * 22 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                Image("Coin")
                                    .resizable()
                                    .frame(width: 25 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                            }
                            
                            
                            
                            
                        }
                        .padding()
                        VStack{
                            Button(action: {}) {
                                Image("Finish")
                                    .resizable()
                                    .frame(width: 86 * sizeScreenIpad(), height: 88 * sizeScreenIpad())
                                    .overlay(
                                        Image("Check")
                                            .resizable()
                                            .frame(width: 55.25 * sizeScreenIpad(), height: 56.57 * sizeScreenIpad())
                                            .alignmentGuide(HorizontalAlignment.center) { d in
                                                d[HorizontalAlignment.center]
                                            }
                                            .alignmentGuide(VerticalAlignment.center) { d in
                                                d[VerticalAlignment.center]
                                            }
                                    )
                            }
                            Text("Finish")
                                .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIpad()))
                                .kerning(-0.05 * 22 * sizeScreenIpad())
                                .foregroundColor(Color.BlueShadow)
                                .opacity(0.7)
                        }
                        .padding()
                    }
                    
                    Text("Ask a question")
                        .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIpad()))
                        .kerning(-0.05 * 22 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                    
                }
                Button(action: {}) {
                    ButtonViewIpad(color: Color.Blue, colorText: Color.BlueShadow, colorShadow: Color.BlueShadow, text: "Finish", clearButton: false)
                }
                .padding()
                    
                
            }
            
        }
        
        
    }
}

struct TheEndPink2Ipad_Previews: PreviewProvider {
    static var previews: some View {
        TheEndPink2Ipad()
    }
}

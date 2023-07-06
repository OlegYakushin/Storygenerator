//
//  TheEndPinkIpad2Land.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct TheEndPinkIpad2Land: View {
    var body: some View {
        ZStack(alignment: .top){
            Color.BackgroundPink
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
               
                    TopMenuIpadLandscapeView()
                    .offset(x: 24 * sizeScreenIpad(), y: 0)
                    
                    
                
                VStack(alignment: .leading){
                    Spacer()
                    VStack(alignment: .leading){
                        
                        Text("The end")
                        
                            .font(.custom("Baloo-Regular", size:55 * sizeScreenIpad()))
                            .kerning(-0.05 * 55 * sizeScreenIpad())
                            .padding(.leading, 31 * sizeScreenIpad())

                            .foregroundColor(Color.BlueShadow)
                        
                        
                        Text("Wanna ask any questions?")
                            .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                            .kerning(-0.05 * 22 * sizeScreenIpad())
                            .padding(.leading, 31 * sizeScreenIpad())

                            .foregroundColor(Color.BlueShadow)
                            .opacity(0.7)
                    }
                    .padding()
                    HStack{
                        VStack{
                            
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
                                    .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIpad()))
                                    .kerning(-0.05 * 22)
                                    .foregroundColor(Color.BlueShadow)
                                    .opacity(0.7)
                            }
                            .padding(42 * sizeScreenIpad())
                            
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
                            .padding(42)
                            
                        }
                        
                        HStack{
                            
                            Button(action: {}) {
                                Image("QuestionIpad")
                                    .resizable()
                                    .frame(width: 120 * sizeScreenIpad(), height: 120 * sizeScreenIpad())
                            }
                            VStack(alignment: .leading){
                                HStack{
                                    Text("3")
                                        .font(.custom("Baloo-Regular", size: 22 * sizeScreenIpad()))
                                        .kerning(-0.05 * 22 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                    Button(action: {}) {
                                        Image("Coin")
                                            .resizable()
                                            .frame(width: 25 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                                    }
                                    
                                }
                                
                                
                                
                                
                                Text("Ask a question")
                                    .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIpad()))
                                    .kerning(-0.05 * 22 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                    .opacity(0.7)
                            }
                            
                        }
                        .padding(42 * sizeScreenIpad())
                        VStack{
                            HStack{
                                Spacer()
                                Text("+3")
                                Image("Coin")
                                    .resizable()
                                    .frame(width: 25 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                                
                                
                            }
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 42 * sizeScreenIpad()) {
                                    CardIpadView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                                    CardIpadView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
                                    CardIpadView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "location", colorCard: Color.LightPink)
                                    
                                }
                            }
                            HStack{
                                Spacer()
                                Button(action: {}) {
                                    ButtonViewIpad(color: Color.Blue, colorText: Color.BlueShadow, colorShadow: Color.BlueShadow, text: "Finish", clearButton: false)
                                }
                            }
                        }
                    }
                        
                     
                    Spacer()
                            
                    }
                    
                    
                    
                        
               
                        
                    
                    
                
            }
            
        }
        
        
    }
}

struct TheEndPinkIpad2Land_Previews: PreviewProvider {
    static var previews: some View {
        TheEndPinkIpad2Land()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

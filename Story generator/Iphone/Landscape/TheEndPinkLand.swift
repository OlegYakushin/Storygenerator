//
//  TheEndPinkLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct TheEndPinkLand: View {
    var body: some View {
        ZStack(alignment: .top){
            Color.BackgroundPink
                .ignoresSafeArea()
            
            VStack{
               
                    TopMenuLandscapeView()
                    .offset(x: 21 * sizeScreenIphone(), y: 15 * sizeScreenIphone())
                    
                    
                
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("The end!")
                        
                            .font(.custom("Baloo-Regular", size:35 * sizeScreenIphone()))
                            .kerning(-0.05 * 35 * sizeScreenIphone())
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 38 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                            
                        
                        Text("You're doing great")
                            .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                            .kerning(-0.05 * 18 * sizeScreenIphone())
                            .padding(.leading, 38 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                            .opacity(0.7)
                        HStack{
                            VStack{
                                
                                HStack{
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
                                        
                                    
                                    Text("Replay")
                                        .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIphone()))
                                        .kerning(-0.05 * 18 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                }
                                .padding(.leading, 38 * sizeScreenIphone())
                                .padding()
                                HStack{
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
                                    Text("Finish")
                                        .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIphone()))
                                        .kerning(-0.05 * 18 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                }
                                .padding(.leading, 38 * sizeScreenIphone())
                                .padding()
                            }
                            VStack{
                                HStack{
                                    Image("Question")
                                        .resizable()
                                        .frame(width: 90 * sizeScreenIphone(), height: 90 * sizeScreenIphone())
                                    Spacer()
                                    VStack(alignment: .leading){
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
                                }
                                Button(action: {}) {
                                    ButtonShort(color: Color.Blue, colorText: Color.BlueShadow, colorShadow: Color.BlueShadow, text: "Finish", clearButton: false)
                                }
                            }
                           
                            }
                        
                
                        
                            
                    }
                  
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15 * sizeScreenIphone()) {
                            CardView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                            CardView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
                           
                            
                        }
                        .padding(.leading, 60 * sizeScreenIphone())
                        
                        
                    }
                  
                    
                    
                }
            }
            
        }
        
        
    }
}


struct TheEndPinkLand_Previews: PreviewProvider {
    static var previews: some View {
        TheEndPinkLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

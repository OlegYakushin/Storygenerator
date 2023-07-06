//
//  StarsViewLandscape.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct StarsViewLandscape: View {
    var colorCard: Color
    var text: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10 * sizeScreenIphone())
                .foregroundColor(colorCard)
             
                .overlay(
                    ZStack{
                        HStack{
                            if text == "15 Stars"{
                                VStack{
                                    
                                    Image("15Coins")
                                        .resizable()
                                        .frame(width: 86.87 * sizeScreenIphone(), height: 97.87 * sizeScreenIphone())
                                }
                                .offset(x: -40 * sizeScreenIphone(), y: 0)
                                .frame(width: 168 * sizeScreenIphone(), height: 172 * sizeScreenIphone())
                            }; if text == "5 Stars"{
                                VStack{
                                    
                                    Image("5Coins")
                                        .resizable()
                                        .frame(width: 86.87 * sizeScreenIphone(), height: 63.87 * sizeScreenIphone())
                                }
                                .offset(x: -40 * sizeScreenIphone(), y: 0)
                                .frame(width: 186 * sizeScreenIphone(), height: 172 * sizeScreenIphone())
                            }; if text == "30 Stars"{
                                VStack{
                                    
                                    Image("30Coins")
                                        .resizable()
                                        .frame(width: 186 * sizeScreenIphone(), height: 172 * sizeScreenIphone())
                                }
                                .offset(x: -25 * sizeScreenIphone(), y: 0)
                            }
                        
                            
                           
                      
                            VStack{
                                
                                Text(text)
                                    .font(.custom("Baloo-Regular", size: 22 * sizeScreenIphone()))
                                    .kerning(-0.05 * 22 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueShadow)
                                    .frame(maxWidth: 75 * sizeScreenIphone(), alignment: .leading)
                                if text == "15 Stars" {
                                    Text("1.99$")
                                        .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIphone()))
                                        .kerning(-0.05 * 22 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                        .frame(maxWidth: 70 * sizeScreenIphone(), alignment: .leading)
                                }; if text == "5 Stars"{
                                    Text("0.99$")
                                        .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIphone()))
                                        .kerning(-0.05 * 22 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                        .frame(maxWidth: 75 * sizeScreenIphone(), alignment: .leading)
                                }; if text == "30 Stars"{
                                    Text("3.99$")
                                        .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIphone()))
                                        .kerning(-0.05 * 22 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                        .frame(maxWidth: 80 * sizeScreenIphone(), alignment: .leading)
                                }
                                
                                Spacer()
                            }
                            .offset(x: -60 * sizeScreenIphone(), y: 0)
                            .padding(.top, 17 * sizeScreenIphone())
                            
                            
                            
                        }
                        if text == "15 Stars"{
                            VStack{
                                Spacer()
                                
                                HStack{
                                    Spacer()
                                    Image("Star")
                                    Text("most popular")
                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIphone()))
                                        .kerning(-0.05 * 16 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                }
                                .offset(x:-15 * sizeScreenIphone(),y:-25 * sizeScreenIphone())
                            }
                        }
                    }
                )
                .frame(width: 273 * sizeScreenIphone(), height: 142 * sizeScreenIphone())
            
        }
    }
}

struct StarsViewLandscape_Previews: PreviewProvider {
    static var previews: some View {
        StarsViewLandscape(colorCard: Color.CardBlue, text: "30 Stars")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

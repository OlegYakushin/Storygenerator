//
//  StarsViewIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct StarsViewIpadLand: View {
    var colorCard: Color
    var text: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10 * sizeScreenIpad())
                .foregroundColor(colorCard)
                
            
                .overlay(
                    ZStack{
                        HStack{
                            if text == "15 Stars"{
                                VStack{
                                    
                                    Image("15Coins")
                                        .resizable()
                                        .frame(width: 117.7 * sizeScreenIpad(), height: 117.48 * sizeScreenIpad())
                                }
                                .offset(x: -20 * sizeScreenIpad(), y: 0)
                                .frame(width: 228 * sizeScreenIpad(), height: 206 * sizeScreenIpad())
                            }; if text == "5 Stars"{
                                VStack{
                                    
                                    Image("5Coins")
                                        .resizable()
                                        .frame(width: 117.7 * sizeScreenIpad(), height: 76.66 * sizeScreenIpad())
                                }
                                .offset(x: -20 * sizeScreenIpad(), y: 0)
                                .frame(width: 228 * sizeScreenIpad(), height: 206 * sizeScreenIpad())
                            }; if text == "30 Stars"{
                                VStack{
                                    
                                    Image("30Coins")
                                        .resizable()
                                        .frame(width: 227.63 * sizeScreenIpad(), height: 206.47 * sizeScreenIpad())
                                }
                                .offset(x: -20 * sizeScreenIpad(), y: 0)
                            }
                        
                            
                           
                      
                            VStack{
                                
                                Text(text)
                                    .font(.custom("Baloo-Regular", size: 27 * sizeScreenIpad()))
                                    .kerning(-0.05 * 27 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                    .frame(maxWidth: 90 * sizeScreenIpad(), alignment: .leading)
                                if text == "15 Stars" {
                                    Text("1.99$")
                                        .font(.custom("Ubuntu-Regular", size: 25 * sizeScreenIpad()))
                                        .kerning(-0.05 * 25 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                        .frame(maxWidth: 75 * sizeScreenIpad(), alignment: .leading)
                                }; if text == "5 Stars"{
                                    Text("0.99$")
                                        .font(.custom("Ubuntu-Regular", size: 25 * sizeScreenIpad()))
                                        .kerning(-0.05 * 25 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                        .frame(maxWidth: 75 * sizeScreenIpad(), alignment: .leading)
                                }; if text == "30 Stars"{
                                    Text("3.99$")
                                        .font(.custom("Ubuntu-Regular", size: 25 * sizeScreenIpad()))
                                        .kerning(-0.05 * 25 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                        .frame(maxWidth: 75 * sizeScreenIpad(), alignment: .leading)
                                }
                                
                                Spacer()
                            }
                            .offset(x: -20 * sizeScreenIpad(), y: 0)
                            .padding(.top, 17 * sizeScreenIpad())
                            
                            
                            
                        }
                        if text == "15 Stars"{
                            VStack{
                                Spacer()
                                
                                HStack{
                                    Spacer()
                                    Image("Star")
                                        .resizable()
                                        .frame(width: 33 * sizeScreenIpad(), height: 29 * sizeScreenIpad())
                                    Text("most popular")
                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIpad()))
                                        .kerning(-0.05 * 16 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                }
                                .padding()
                            }
                        }
                    }
                )
                .frame(width: 412 * sizeScreenIpad(), height: 202 * sizeScreenIpad())
        }
    }
}

struct StarsViewIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        StarsViewIpadLand(colorCard: Color.CardBlue, text: "15 Stars")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

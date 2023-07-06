//
//  BottomMenuLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct BottomMenuLand: View {
    @State var selectedMenu = "All stories"
     var body: some View {
         
         RoundedRectangle(cornerRadius: 20 * sizeScreenIphone())
            
             .foregroundColor(Color.BlueBottomMenu)
             .overlay(
                VStack(spacing: 50 * sizeScreenIphone()){
                    HStack{
                        
                        if selectedMenu == "All stories"{
                            Button(action: {
                                selectedMenu = "All stories"
                            }) {
                                RoundedRectangle(cornerRadius: 20 * sizeScreenIphone())
                                    .frame(width: 109 * sizeScreenIphone(), height: 65 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueBottomSelected)
                                    .overlay(
                                        VStack{
                                            Image("BookBottomMenu")
                                                .resizable()
                                                .frame(width: 25 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
                                            Text("All stories")
                                                .font(.custom("Ubuntu-Bold", size: 12 * sizeScreenIphone()))
                                                .kerning(-0.05 * 12 * sizeScreenIphone())
                                                .foregroundColor(Color.white)
                                                
                                        }
                                    )
                            }
                        }else{
                            Button(action: {
                                selectedMenu = "All stories"
                            }) {
                                VStack{
                                    Image("BookBottomMenu")
                                        .resizable()
                                        .frame(width: 25 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
                                    Text("All stories")
                                        .font(.custom("Ubuntu-Regular", size: 12 * sizeScreenIpad()))
                                        .kerning(-0.05 * 12 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                       
                                }}
                        }
                    }
                   
                    VStack{
                        if selectedMenu == "Challenges"{
                            Button(action: {
                                selectedMenu = "Challenges"
                            }) {
                                RoundedRectangle(cornerRadius: 20 * sizeScreenIpad())
                                    .frame(width: 109 * sizeScreenIphone(), height: 65 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueBottomSelected)
                                    .overlay(
                                        VStack{
                                            Image("Challenges")
                                                .resizable()
                                                .frame(width: 25 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
                                            Text("Challenges")
                                                .font(.custom("Ubuntu-Bold", size: 12 * sizeScreenIphone()))
                                                .kerning(-0.05 * 12 * sizeScreenIphone())
                                                .foregroundColor(Color.white)
                                                
                                        }
                                    )
                            }
                                
                        }else{
                            Button(action: {
                                selectedMenu = "Challenges"
                            }) {
                                VStack{
                                    Image("Challenges")
                                        .resizable()
                                        .frame(width: 27 * sizeScreenIphone(), height: 27 * sizeScreenIphone())
                                    Text("Challenges")
                                        .font(.custom("Ubuntu-Regular", size: 12 * sizeScreenIpad()))
                                        .kerning(-0.05 * 12 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                }
                            }
                        }
                    }
                    
                    VStack{
                        if selectedMenu == "Trophies"{
                            Button(action: {
                                selectedMenu = "Trophies"
                            }) {
                                RoundedRectangle(cornerRadius: 20 * sizeScreenIphone())
                                    .frame(width: 109 * sizeScreenIphone(), height: 65 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueBottomSelected)
                                    .overlay(
                                        VStack{
                                            Image("Trophies")
                                                .resizable()
                                                .frame(width: 27 * sizeScreenIphone(), height: 27 * sizeScreenIphone())
                                            Text("Trophies")
                                                .font(.custom("Ubuntu-Bold", size: 12 * sizeScreenIphone()))
                                                .kerning(-0.05 * 12 * sizeScreenIphone())
                                                .foregroundColor(Color.white)
                                                
                                        }
                                    )
                            }
                                    }else{
                                        Button(action: {
                                            selectedMenu = "Trophies"
                                        }) {
                                            VStack{
                                                Image("Trophies")
                                                    .resizable()
                                                    .frame(width: 27 * sizeScreenIphone(), height: 27 * sizeScreenIphone())
                                                Text("Trophies")
                                                    .font(.custom("Ubuntu-Regular", size: 12 * sizeScreenIphone()))
                                                    .kerning(-0.05 * 12 * sizeScreenIphone())
                                                    .foregroundColor(Color.BlueShadow)
                                                    .opacity(0.7)
                                            }
                                        }
                                    }
                    }

                }
                     
             )
             .frame(width: 123 * sizeScreenIphone(), height: 390 * sizeScreenIphone())
             .offset(x:0,y:10)
             
     }
 }


struct BottomMenuLand_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenuLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

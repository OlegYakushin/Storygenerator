//
//  BottomMenu.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/17/23.
//

import SwiftUI

struct BottomMenu: View {
   @State var selectedMenu = "All stories"
    var body: some View {
        RoundedRectangle(cornerRadius: 16 * sizeScreenIphone())
            .frame(width: 390 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
            .foregroundColor(Color.BlueBottomMenu)
            .overlay(
                HStack{
                    VStack{
                        
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
                                                .opacity(0.7)
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
                                        .font(.custom("Ubuntu-Regular", size: 12 * sizeScreenIphone()))
                                        .kerning(-0.05 * 12 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                }}
                        }
                    }
                    Spacer()
                    VStack{
                        if selectedMenu == "Challenges"{
                            Button(action: {
                                selectedMenu = "Challenges"
                            }) {
                                RoundedRectangle(cornerRadius: 20 * sizeScreenIphone())
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
                                                .opacity(0.7)
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
                                        .frame(width: 25 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
                                    Text("Challenges")
                                        .font(.custom("Ubuntu-Regular", size: 12 * sizeScreenIphone()))
                                        .kerning(-0.05 * 12 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                }
                            }
                        }
                    }
                    Spacer()
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
                                                .frame(width: 25 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
                                            Text("Trophies")
                                                .font(.custom("Ubuntu-Bold", size: 12 * sizeScreenIphone()))
                                                .kerning(-0.05 * 12 * sizeScreenIphone())
                                                .foregroundColor(Color.white)
                                                .opacity(0.7)
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
                                                    .frame(width: 25 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
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
                    .padding()
            )
    }
}

struct BottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenu()
    }
}

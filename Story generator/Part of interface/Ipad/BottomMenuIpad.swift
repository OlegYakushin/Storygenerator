//
//  BottomMenuIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct BottomMenuIpad: View {
    
    @State var selectedMenu = "All stories"
     var body: some View {
         RoundedRectangle(cornerRadius: 16 * sizeScreenIpad())
             .frame(width: 834 * sizeScreenIpad(), height: 99 * sizeScreenIpad())
             .foregroundColor(Color.BlueBottomMenu)
             .overlay(
                 HStack(spacing: 150 * sizeScreenIpad()){
                     VStack{
                         
                         if selectedMenu == "All stories"{
                             Button(action: {
                                 selectedMenu = "All stories"
                             }) {
                                 RoundedRectangle(cornerRadius: 20 * sizeScreenIpad())
                                     .frame(width: 113 * sizeScreenIpad(), height: 76 * sizeScreenIpad())
                                     .foregroundColor(Color.BlueBottomSelected)
                                     .overlay(
                                         VStack{
                                             Image("BookBottomMenu")
                                                 .resizable()
                                                 .frame(width: 25 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                                             Text("All stories")
                                                 .font(.custom("Ubuntu-Bold", size: 16 * sizeScreenIpad()))
                                                 .kerning(-0.05 * 16 * sizeScreenIpad())
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
                                         .frame(width: 25 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                                     Text("All stories")
                                         .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIpad()))
                                         .kerning(-0.05 * 16 * sizeScreenIpad())
                                         .foregroundColor(Color.BlueShadow)
                                         .opacity(0.7)
                                 }}
                         }
                     }
                    
                     VStack{
                         if selectedMenu == "Challenges"{
                             Button(action: {
                                 selectedMenu = "Challenges"
                             }) {
                                 RoundedRectangle(cornerRadius: 20 * sizeScreenIpad())
                                     .frame(width: 133 * sizeScreenIpad(), height: 76 * sizeScreenIpad())
                                     .foregroundColor(Color.BlueBottomSelected)
                                     .overlay(
                                         VStack{
                                             Image("Challenges")
                                                 .resizable()
                                                 .frame(width:25 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                                             Text("Challenges")
                                                 .font(.custom("Ubuntu-Bold", size: 16 * sizeScreenIpad()))
                                                 .kerning(-0.05 * 16 * sizeScreenIpad())
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
                                         .frame(width: 25 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                                     Text("Challenges")
                                         .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIpad()))
                                         .kerning(-0.05 * 16 * sizeScreenIpad())
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
                                 RoundedRectangle(cornerRadius: 20 * sizeScreenIpad())
                                     .frame(width: 133 * sizeScreenIpad(), height: 76 * sizeScreenIpad())
                                     .foregroundColor(Color.BlueBottomSelected)
                                     .overlay(
                                         VStack{
                                             Image("Trophies")
                                                 .resizable()
                                                 .frame(width: 25 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                                             Text("Trophies")
                                                 .font(.custom("Ubuntu-Bold", size: 16 * sizeScreenIpad()))
                                                 .kerning(-0.05 * 16 * sizeScreenIpad())
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
                                                     .frame(width: 25 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                                                 Text("Trophies")
                                                     .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIpad()))
                                                     .kerning(-0.05 * 16 * sizeScreenIpad())
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

 struct BottomMenuIpad_Previews: PreviewProvider {
     static var previews: some View {
         BottomMenuIpad()
     }
 }

//
//  BottomMenuIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct BottomMenuIpadLand: View {
    
    @State var selectedMenu = "All stories"
     var body: some View {
         RoundedRectangle(cornerRadius: 20 * sizeScreenIpad())
             .frame(width: 162 * sizeScreenIpad(), height: 834 * sizeScreenIpad())
             .foregroundColor(Color.BlueBottomMenu)
             .overlay(
                 VStack(spacing: 150 * sizeScreenIpad()){
                     HStack{
                         
                         if selectedMenu == "All stories"{
                             Button(action: {
                                 selectedMenu = "All stories"
                             }) {
                                 RoundedRectangle(cornerRadius: 20 * sizeScreenIpad())
                                     .frame(width: 133 * sizeScreenIpad(), height: 108 * sizeScreenIpad())
                                     .foregroundColor(Color.BlueBottomSelected)
                                     .overlay(
                                         VStack{
                                             Image("BookBottomMenu")
                                                 .resizable()
                                                 .frame(width: 45 * sizeScreenIpad(), height: 45 * sizeScreenIpad())
                                             Text("All stories")
                                                 .font(.custom("Ubuntu-Bold", size: 22 * sizeScreenIpad()))
                                                 .kerning(-0.05 * 22 * sizeScreenIpad())
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
                                         .frame(width: 45 * sizeScreenIpad(), height: 45 * sizeScreenIpad())
                                     Text("All stories")
                                         .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIpad()))
                                         .kerning(-0.05 * 22 * sizeScreenIpad())
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
                                     .frame(width: 113 * sizeScreenIpad(), height: 108 * sizeScreenIpad())
                                     .foregroundColor(Color.BlueBottomSelected)
                                     .overlay(
                                         VStack{
                                             Image("Challenges")
                                                 .resizable()
                                                 .frame(width: 45 * sizeScreenIpad(), height: 45 * sizeScreenIpad())
                                             Text("Challenges")
                                                 .font(.custom("Ubuntu-Bold", size: 22 * sizeScreenIpad()))
                                                 .kerning(-0.05 * 22 * sizeScreenIpad())
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
                                         .frame(width: 45 * sizeScreenIpad(), height: 45 * sizeScreenIpad())
                                     Text("Challenges")
                                         .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIpad()))
                                         .kerning(-0.05 * 22 * sizeScreenIpad())
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
                                     .frame(width: 133 * sizeScreenIpad(), height: 108 * sizeScreenIpad())
                                     .foregroundColor(Color.BlueBottomSelected)
                                     .overlay(
                                         VStack{
                                             Image("Trophies")
                                                 .resizable()
                                                 .frame(width: 45 * sizeScreenIpad(), height: 45 * sizeScreenIpad())
                                             Text("Trophies")
                                                 .font(.custom("Ubuntu-Bold", size: 22 * sizeScreenIpad()))
                                                 .kerning(-0.05 * 22 * sizeScreenIpad())
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
                                                     .frame(width: 45 * sizeScreenIpad(), height: 45 * sizeScreenIpad())
                                                 Text("Trophies")
                                                     .font(.custom("Ubuntu-Regular", size: 22 * sizeScreenIpad()))
                                                     .kerning(-0.05 * 22 * sizeScreenIpad())
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

struct BottomMenuIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenuIpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

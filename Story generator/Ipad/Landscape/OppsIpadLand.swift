//
//  OppsIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct OppsIpadLand: View {
    var body: some View {
        ZStack{
            Color.Background
                .ignoresSafeArea()
            VStack{
                TopMenuIpadLandscapeView()
                    .offset(x: 24 * sizeScreenIpad(), y: 0)
                Spacer()
               
            }
            HStack{
              
                VStack(alignment: .leading){
                    Text("Oops...")
                        .font(.custom("Baloo", size:55 * sizeScreenIpad()))
                        .kerning(-0.05 * 55 * sizeScreenIpad())
                        .frame(width: 154 * sizeScreenIpad(), height: 60 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        
                    Text("Seems there’s not enough stars on your balance")
                        .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                        .kerning(-0.05 * 22 * sizeScreenIpad())
                        .frame(width: 308 * sizeScreenIpad(), height: 50 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        
                    Button(action: {
                      
                    }) {
                        ButtonWithCoinIpad(color: Color.Blue, colorShadow: Color.BlueShadow, text: "Purchase Stars", numberOfCoins: "")
                    }
                }
                
               
                
            
                Image("EmptyChest")
                    .resizable()
                    .frame(width: 270 * sizeScreenIpad(), height: 221.05 * sizeScreenIpad())
                    .offset(x: 280 * sizeScreenIpad(), y: 0)
            }
            .offset(x: -200 * sizeScreenIpad(), y: 0)
           
        }
    }
}

struct OppsIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        OppsIpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  ButtonWithCoinIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct ButtonWithCoinIpad: View {
    var color: Color
    var colorShadow: Color
    var text: String
    var numberOfCoins: String
    
    var body: some View {
        
      
            ZStack {
                
                RoundedRectangle(cornerRadius: 25 * sizeScreenIpad())
                    .frame(width: 407 * sizeScreenIpad(), height: 74 * sizeScreenIpad())
                    .foregroundColor(colorShadow)
                    .offset(x: 0, y: 5 * sizeScreenIpad())
                
                
                RoundedRectangle(cornerRadius: 25 * sizeScreenIpad())
                    .frame(width: 407 * sizeScreenIpad(), height: 74 * sizeScreenIpad())
                    .foregroundColor(color)
                    .overlay(
                        HStack{
                            Text(text)
                                .font(.custom("Baloo-Regular", size: 22 * sizeScreenIpad()))
                                .foregroundColor(Color.white)
                                .frame(width: 263 * sizeScreenIpad(), height: 20 * sizeScreenIpad())
                            Image("Coin")
                                .resizable()
                                .frame(width: 35 * sizeScreenIpad(), height: 35 * sizeScreenIpad())
                            Text(numberOfCoins)
                                .font(.custom("Baloo-Regular", size: 22 * sizeScreenIpad()))
                                .foregroundColor(Color.white)
                                
                            
                                
                            
                        }
                    )
            }
        
        
    }
}

struct ButtonWithCoinIpad_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithCoinIpad(color: Color.Blue, colorShadow: Color.BlueShadow, text: "I wanna random story", numberOfCoins: "3")
    }
}

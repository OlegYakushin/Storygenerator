//
//  ButtonWithCoin.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/14/23.
//

import SwiftUI


struct ButtonWithCoin: View {
    var color: Color
    var colorShadow: Color
    var text: String
    var numberOfCoins: String
    
    var body: some View {
        
      
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .frame(width:335 * sizeScreenIphone(), height: 55 * sizeScreenIphone())
                    .foregroundColor(colorShadow)
                    .offset(x: 0, y: 5 * sizeScreenIphone())
                
                
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 335 * sizeScreenIphone(), height:55 * sizeScreenIphone())
                    .foregroundColor(color)
                    .overlay(
                        HStack{
                            Text(text)
                                .font(.custom("Baloo-Regular", size: 18))
                                .foregroundColor(Color.white)
                                .frame(width:201 * sizeScreenIphone(), height:20 * sizeScreenIphone())
                            Image("Coin")
                                .resizable()
                                .frame(width:35 * sizeScreenIphone(), height:35 * sizeScreenIphone())
                            Text(numberOfCoins)
                                .font(.custom("Baloo-Regular", size: 18))
                                .foregroundColor(Color.white)
                                
                            
                                
                            
                        }
                    )
            }
        
        
    }
}

struct ButtonWithCoin_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithCoin(color: Color.Blue, colorShadow: Color.BlueShadow, text: "I wanna random story", numberOfCoins: "3")
    }
}

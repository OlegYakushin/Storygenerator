//
//  ButtonShort.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct ButtonShort: View {
    var color: Color
  
    var colorText: Color
    var colorShadow: Color
    var text: String
    var clearButton: Bool
    
    var body: some View {
        
     
            ZStack {
                
                RoundedRectangle(cornerRadius: 16 * sizeScreenIphone())
                    
                    .frame(width: 225 * sizeScreenIphone(), height: 55 * sizeScreenIphone())
                
                    .foregroundColor(colorShadow)
                    
                    .offset(x: 0, y: 5 * sizeScreenIphone())
                
                if clearButton == true{
                    RoundedRectangle(cornerRadius: 16 * sizeScreenIphone())
                        .stroke(Color.PinkButton, lineWidth: 2 * sizeScreenIphone())
                        .background(Color.clear)
                        .frame(width:225 * sizeScreenIphone(), height: 55 * sizeScreenIphone())
                        .foregroundColor(color)
                        .overlay(
                            VStack{
                                Text(text)
                                    .font(.custom("Baloo-Regular", size: 22 * sizeScreenIphone()))
                                    .foregroundColor(colorText)
                            }
                            
                        )
                }else{
                    RoundedRectangle(cornerRadius: 16 * sizeScreenIphone())
                    
                        .frame(width: 225 * sizeScreenIphone(), height: 55 * sizeScreenIphone())
                        .foregroundColor(color)
                        .overlay(
                            VStack{
                                Text(text)
                                    .font(.custom("Baloo-Regular", size: 22 * sizeScreenIphone()))
                                    .foregroundColor(colorText)
                                
                            }
                            
                        )
                }
            }
        
        
    }
}

struct ButtonShort_Previews: PreviewProvider {
    static var previews: some View {
        ButtonShort(color: Color.Blue, colorText: Color.BlueShadow, colorShadow: Color.BlueShadow, text: "Finish", clearButton: false)
    }
}

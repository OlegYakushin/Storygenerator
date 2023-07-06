//
//  ButtonViewIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct ButtonViewIpad: View {
    var color: Color
  
    var colorText: Color
    var colorShadow: Color
    var text: String
    var clearButton: Bool
    
    var body: some View {
        
     
            ZStack {
                
                RoundedRectangle(cornerRadius: 16 * sizeScreenIpad())
                    
                    .frame(width: 465 * sizeScreenIpad(), height: 74 * sizeScreenIpad())
                
                    .foregroundColor(colorShadow)
                    
                    .offset(x: 0, y: 5 * sizeScreenIpad())
                
                if clearButton == true{
                    RoundedRectangle(cornerRadius: 16 * sizeScreenIpad())
                        .stroke(Color.PinkButton, lineWidth: 2 * sizeScreenIpad())
                        .background(Color.clear)
                        .frame(width: 465 * sizeScreenIpad(), height: 74 * sizeScreenIpad())
                        .foregroundColor(color)
                        .overlay(
                            VStack{
                                Text(text)
                                    .font(.custom("Baloo-Regular", size: 22 * sizeScreenIpad()))
                                    .foregroundColor(colorText)
                            }
                            
                        )
                }else{
                    RoundedRectangle(cornerRadius: 16 * sizeScreenIpad())
                    
                        .frame(width: 465 * sizeScreenIpad(), height: 74 * sizeScreenIpad())
                        .foregroundColor(color)
                        .overlay(
                            VStack{
                                Text(text)
                                    .font(.custom("Baloo-Regular", size: 22 * sizeScreenIpad()))
                                    .foregroundColor(colorText)
                                
                            }
                            
                        )
                }
            }
        
        
    }
}

struct ButtonViewIpad_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViewIpad(color: Color.Blue, colorText: Color.BlueShadow, colorShadow: Color.BlueShadow, text: "Finish", clearButton: false)
    }
}

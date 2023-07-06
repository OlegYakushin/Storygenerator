//
//  CardIpadView.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/11/23.
//

import SwiftUI

struct CardIpadView: View {
    var image: String
    var textBeforeImage: String
    var imageAward: String
    var textFirstString: String
    var textSecondString: String
    var textBold: String
    var colorCard: Color
    var body: some View {
        
        
        ZStack{
            RoundedRectangle(cornerRadius: 10 * sizeScreenIpad())
                .frame(width: 190 * sizeScreenIpad(), height: 271 * sizeScreenIpad())
                .foregroundColor(colorCard)
                .overlay(
            VStack{
                Image(image)
                
                    .resizable()
                    
                    .frame(width: 190 * sizeScreenIpad(), height: 149 * sizeScreenIpad())
                    
                
                
                HStack{
                    Text(textBeforeImage)
                        .font(.custom("Baloo-Regular", size: 18 * sizeScreenIpad()))
                        .kerning(-0.05 * 18 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                    if imageAward == "Trophy"{
                        Image(imageAward)
                            .resizable()
                            .frame(width: 38 * sizeScreenIpad(), height: 38 * sizeScreenIpad())
                            
                        
                    }else{
                        Image(imageAward)
                            .resizable()
                            .frame(width: 32 * sizeScreenIpad(), height: 32 * sizeScreenIpad())
                        
                    }
                    
                }
                HStack{
                    Text(textFirstString)
                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIpad()))
                        .kerning(-0.05 * 16 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                    
                    
                }
                HStack{
                    Text(textSecondString)
                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIpad()))
                        .kerning(-0.05 * 16 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        + Text(textBold)
                        .font(.custom("Ubuntu-Bold", size: 16 * sizeScreenIpad()))
                        .kerning(-0.05 * 16 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                  
                    
                    
                }
                Spacer()
                
            }
            
            
            .cornerRadius(10 * sizeScreenIpad())
            
            )
        }
    }
}

struct CardIpadView_Previews: PreviewProvider {
    static var previews: some View {
        CardIpadView(image: "Princess", textBeforeImage:"+ 5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
    }
}

//
//  CardView.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/11/23.
//

import SwiftUI

struct CardView: View {
    var image: String
    var textBeforeImage: String
    var imageAward: String
    var textFirstString: String
    var textSecondString: String
    var textBold: String
    var colorCard: Color
    var body: some View {
        
        
        ZStack{
            RoundedRectangle(cornerRadius: 16 * sizeScreenIphone())
                .frame(width: 148 * sizeScreenIphone(), height: 211 * sizeScreenIphone())
                .foregroundColor(colorCard)
                .overlay(
            VStack{
               
                Image(image)
                
                    .resizable()
            
                    .frame(width: 148 * sizeScreenIphone(), height: 116 * sizeScreenIphone())
                    
                
                
                HStack{
                    Text(textBeforeImage)
                        .font(.custom("Baloo-Regular", size: 18 * sizeScreenIphone()))
                        .kerning(-0.05 * 18 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                    if imageAward == "Trophy"{
                        Image(imageAward)
                            .resizable()
                            .frame(width: 30 * sizeScreenIphone(), height:30 * sizeScreenIphone())
                        
                    }else{
                        Image(imageAward)
                            .resizable()
                            .frame(width:25 * sizeScreenIphone(), height: 25 * sizeScreenIphone())
                    }
                    
                }
                HStack{
                    Text(textFirstString)
                        .font(.custom("Ubuntu-Regular", size: 13 * sizeScreenIphone()))
                        .kerning(-0.05 * 13 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                    
                    
                }
                HStack{
                    Text(textSecondString)
                        .font(.custom("Ubuntu-Regular", size: 13 * sizeScreenIphone()))
                        .kerning(-0.05 * 13 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        + Text(textBold)
                        .font(.custom("Ubuntu-Bold", size: 13 * sizeScreenIphone()))
                        .kerning(-0.05 * 13 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                  
                    
                    
                }
                Spacer()
                
            }
            
            
            .cornerRadius(10 * sizeScreenIphone())
            
            )
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "Princess", textBeforeImage:"+ 5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
    }
}

//
//  GeneratingTheAnswer.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/17/23.
//

import SwiftUI

struct GeneratingTheAnswer: View {
    
    var body: some View {
        ZStack{
            Color.BackgroundPink
                .ignoresSafeArea()
            
           
            VStack{
                TopMenuView()
                    .offset(x: 21 * sizeScreenIphone(), y: 0)
                Spacer()
            }
            VStack{
                ZStack{
                    
                    Image("OpenBook")
                        .resizable()
                        .frame(width: 200 * sizeScreenIphone(), height: 43 * sizeScreenIphone())
                        .overlay(
                            Image("MagicWand")
                                .resizable()
                                .frame(width: 200 * sizeScreenIphone(), height: 200 * sizeScreenIphone())
                                .offset(x:35 * sizeScreenIphone(), y:-35 * sizeScreenIphone())
                               
                        )
                   
                }
                .padding()
                    
                VStack(spacing: -10 * sizeScreenIphone()){
                    Text("We are recording the answer!")
                        .font(.custom("Baloo", size:35 * sizeScreenIphone()))
                        ._lineHeightMultiple(40/60)
                        .kerning(-0.05 * 35 * sizeScreenIphone())
                        .frame(width: 362 * sizeScreenIphone(), height: 80 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                    
                        .multilineTextAlignment(.center)
                    
                    
                    
                    
                    Text("Let’s the magic happen!")
                    
                        .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                        .kerning(-0.05 * 18 * sizeScreenIphone())
                        .frame(width: 221 * sizeScreenIphone(), height: 21 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                }
                .padding()
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 15 * sizeScreenIphone()) {
                        CardView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.GreenCard)
                        CardView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightPink)
                        CardView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.LightBlue)
                        
                    }
                    .padding(.leading, 37 * sizeScreenIphone())
                }
                
                
                
                
            }
            VStack{
                Spacer()
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        
                        .opacity(0.7)
                        .foregroundColor(Color.BlueShadow)
                    
                    
                    Text("Back")
                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                    .foregroundColor(Color.BlueShadow)
                    .kerning(-0.05 * 18 * sizeScreenIphone())
                    .opacity(0.7)
                    
                    
                            }
            }
            
        }
    }
}

struct GeneratingTTheAnswer_Previews: PreviewProvider {
    static var previews: some View {
        GeneratingTheAnswer()
    }
}

//
//  GeneratingTheAnswerIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct GeneratingTheAnswerIpad: View {
    
    var body: some View {
        ZStack{
            Color.BackgroundPink
                .ignoresSafeArea()
            
           
            VStack{
                TopMenuIpadView()
                    .offset(x: 34 * sizeScreenIpad(), y: 0)
                Spacer()
            }
            VStack{
                Text("We are recording the answer!")
                    .font(.custom("Baloo", size:55 * sizeScreenIpad()))
                    .kerning(-0.05 * 55 * sizeScreenIpad())
                    .frame(width: 702 * sizeScreenIpad(), height: 60 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                
                    .multilineTextAlignment(.center)
                
                
                
                
                Text("Let’s the magic happen!")
                
                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                    .kerning(-0.05 * 18 * sizeScreenIpad())
                    .frame(width: 334 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                
                
                
                ZStack{
                    
                    Image("OpenBook")
                        .resizable()
                        .frame(width: 350 * sizeScreenIpad(), height: 75.57 * sizeScreenIpad())
                        .overlay(
                            Image("MagicWand")
                                .resizable()
                                .frame(width: 350 * sizeScreenIpad(), height: 350 * sizeScreenIpad())
                                .offset(x:65 * sizeScreenIpad(), y:-65 * sizeScreenIpad())
                               
                        )
                   
                } .padding(100 * sizeScreenIpad())
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 42 * sizeScreenIpad()){
                        CardIpadView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                        CardIpadView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
                        CardIpadView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.LightPink)
                        
                    }
                    .padding(.leading, 90 * sizeScreenIpad())
                    
                }
                
                
                
            }
            VStack{
                Spacer()
                Button(action: {}) {
                    Image(systemName: "chevron.left")
                        
                        .opacity(0.7)
                        .foregroundColor(Color.BlueShadow)
                    
                    
                    Text("Back")
                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                    .foregroundColor(Color.BlueShadow)
                    .kerning(-0.05 * 18 * sizeScreenIpad())
                    .opacity(0.7)
                    
                    
                            }
            }
            
        }
    }
}

struct GeneratingTheAnswerIpad_Previews: PreviewProvider {
    static var previews: some View {
        GeneratingTheAnswerIpad()
    }
}

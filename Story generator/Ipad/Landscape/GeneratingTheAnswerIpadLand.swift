//
//  GeneratingTheAnswerIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct GeneratingTheAnswerIpadLand: View {
    var body: some View {
            ZStack{
                Color.BackgroundPink
                    .ignoresSafeArea()
                
               
                VStack{
                    TopMenuIpadLandscapeView()
                        .offset(x: 34 * sizeScreenIpad(), y: 0)
                    Spacer()
                }
                VStack(alignment: .leading){
                    Text("We are recording the answer!")
                        .font(.custom("Baloo", size:55 * sizeScreenIpad()))
                        .kerning(-0.05 * 55 * sizeScreenIpad())
                        
                        .foregroundColor(Color.BlueShadow)
                    
                        .multilineTextAlignment(.center)
                    
                        .offset(x:70 * sizeScreenIpad(),y:-60 * sizeScreenIpad())
                    
                    
                    Text("Let’s the magic happen!")
                    
                        .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                        .kerning(-0.05 * 18 * sizeScreenIpad())
                        
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        .offset(x:70 * sizeScreenIpad(),y:-60 * sizeScreenIpad())
                    
                    HStack(alignment: .bottom){
                        ZStack{
                            
                            Image("OpenBook")
                                .resizable()
                                .frame(width: 350 * sizeScreenIpad(), height: 75.57 * sizeScreenIpad())
                                .overlay(
                                    Image("MagicWand")
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width * 350/1194, height: 350 * sizeScreenIpad())
                                        .offset(x:65 * sizeScreenIpad(), y:-65 * sizeScreenIpad())
                                       
                                )
                           
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 42 * sizeScreenIpad()){
                                CardIpadView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                                CardIpadView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
                                CardIpadView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.LightPink)
                                
                            }
                            .padding(.leading, 37 * sizeScreenIpad())
                            
                        }
                    }
                    .offset(x:70 * sizeScreenIpad(),y:0)
                    
                    
                }
               
                
            }
        }
    }


struct GeneratingTheAnswerIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        GeneratingTheAnswerIpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

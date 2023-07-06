//
//  GeneratingAnswerland.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct GeneratingAnswerland: View {
    var body: some View {
        NavigationStack{
        ZStack{
            Color.BackgroundPink
                .ignoresSafeArea()
            
            
            VStack{
                TopMenuLandscapeView()
                    .offset(x: 33 * sizeScreenIphone(), y: 0)
                    .padding()
                Spacer()
                
            }
            VStack(alignment: .leading){
                
                VStack(alignment: .leading){
                    Text("We are recording the answer!")
                        .font(.custom("Baloo", size:35 * sizeScreenIphone()))
                        ._lineHeightMultiple(40/60)
                        .kerning(-0.05 * 35 * sizeScreenIphone())
                    
                        .foregroundColor(Color.BlueShadow)
                    
                        .multilineTextAlignment(.center)
                    
                    Text("Let’s the magic happen!")
                    
                        .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                        .kerning(-0.05 * 18 * sizeScreenIphone())
                    
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                }
                .offset(x:55 * sizeScreenIphone(),y: 90 * sizeScreenIphone())
                HStack{
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
                    
                    .frame(width: 390 * sizeScreenIphone(), height: 282 * sizeScreenIphone())
                    
                    
                    
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15 * sizeScreenIphone()) {
                            CardView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.GreenCard)
                            CardView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightPink)
                            CardView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.LightPink)
                            
                            
                        }
                    }
                    
                }
                .offset(x:-30 * sizeScreenIphone(),y: 40 * sizeScreenIphone())
            }
            
            
            
            
            
            
            
            VStack{
                
                NavigationLink(destination: EmptyView()){
                    Image(systemName: "chevron.left")
                    
                        .opacity(0.7)
                        .foregroundColor(Color.BlueShadow)
                    
                    
                    Text("Back")
                        .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                        .foregroundColor(Color.BlueShadow)
                        .kerning(-0.05 * 18 * sizeScreenIphone())
                        .opacity(0.7)
                    
                    
                }
                
                Spacer()
                
            } .offset(x:-280 * sizeScreenIphone(),y: 30 * sizeScreenIphone())
            
        }
    }
    }
}
struct GeneratingAnswerland_Previews: PreviewProvider {
    static var previews: some View {
        GeneratingAnswerland()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  GeneratingTheStory2.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/17/23.
//

import SwiftUI

struct GeneratingTheStory2: View {
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.Background
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
                        Text("We are creating your story!")
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
                            CardView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                            CardView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
                            CardView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.LightPink)
                            
                        }
                        .padding(.leading, 37 * sizeScreenIphone())
                    }
                    
                    
                    
                    
                }
                VStack{
                    Spacer()
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
                }
            }
        }
    }
}

struct GeneratingTheStory2_Previews: PreviewProvider {
    static var previews: some View {
        GeneratingTheStory2()
    }
}

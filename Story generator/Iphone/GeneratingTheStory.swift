//
//  GeneratingTheStory.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/14/23.
//

import SwiftUI

struct GeneratingTheStory: View {
    
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
                    Image("MagicIphone")
                        .resizable()
                        .frame(width: 390 * sizeScreenIphone(), height: 282 * sizeScreenIphone())
                }
                .offset(x: 0, y: -210 * sizeScreenIphone())
                VStack{
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
                        .frame(width:221 * sizeScreenIphone(), height:21 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15 * sizeScreenIphone()) {
                            CardView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                            CardView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
                            CardView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.LightPink)
                            
                        }
                        .padding(.leading, 37 * sizeScreenIphone())
                    }
                    .offset(x: 0, y: 20 * sizeScreenIphone())
                    
                    
                    
                    
                    
                }
                .offset(x: 0, y: 70 * sizeScreenIphone())
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

struct GeneratingTheStory_Previews: PreviewProvider {
    static var previews: some View {
        GeneratingTheStory()
    }
}

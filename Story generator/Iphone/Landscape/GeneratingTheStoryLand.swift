//
//  GeneratingTheStoryLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct GeneratingTheStoryLand: View {
    var body: some View {
        NavigationStack{
        ZStack{
            Color.Background
                .ignoresSafeArea()
            
            
            VStack{
                TopMenuLandscapeView()
                    .offset(x: 33 * sizeScreenIphone(), y: 0)
                    .padding()
                Spacer()
                
            }
            VStack(alignment: .leading){
                
                VStack(alignment: .leading){
                    Text("We are creating your story!")
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
                    Image("MagicIphone")
                        .resizable()
                        .frame(width: 390 * sizeScreenIphone(), height: 282 * sizeScreenIphone())
                    
                    
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        HStack(spacing: 15 * sizeScreenIphone()) {
                            CardView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                            CardView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
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

struct GeneratingTheStoryLand_Previews: PreviewProvider {
    static var previews: some View {
        GeneratingTheStoryLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

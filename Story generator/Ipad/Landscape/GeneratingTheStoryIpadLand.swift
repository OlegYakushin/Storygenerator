//
//  GeneratingTheStoryIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct GeneratingTheStoryIpadLand: View {
    var body: some View {
        NavigationStack{
        ZStack{
            Color.Background
                .ignoresSafeArea()
            
            
            VStack(alignment: .leading){
                TopMenuIpadLandscapeView()
                    .offset(x: 24 * sizeScreenIpad(), y: 0)
                    .padding()
                VStack(alignment: .leading){
                    Text("We are creating your story!")
                        .font(.custom("Baloo", size:55 * sizeScreenIpad()))
                    
                        .kerning(-0.05 * 55 * sizeScreenIpad())
                    
                        .foregroundColor(Color.BlueShadow)
                        .frame(width: 629 * sizeScreenIpad(), height: 60 * sizeScreenIpad())
                    
                    
                    Text("Let’s the magic happen!")
                    
                        .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                        .kerning(-0.05 * 22 * sizeScreenIpad())
                        .frame(width: 244 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                }
                .offset(x: 50 * sizeScreenIpad(), y: 0)
                Spacer()
                
            }
            
            
            
            HStack{
                Image("Magic")
                    .resizable()
                    .frame(width: 672 * sizeScreenIpad(), height: 430 * sizeScreenIpad())
                    .offset(x: -80 * sizeScreenIpad(), y: 100 * sizeScreenIpad())
                ScrollView(.horizontal, showsIndicators: false ){
                    
                    HStack(spacing: 42 * sizeScreenIpad()) {
                        CardIpadView(image: "Princess", textBeforeImage:"+5", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.Blue)
                        CardIpadView(image: "Location", textBeforeImage:"+", imageAward: "Trophy", textFirstString: "Ask about story", textSecondString: "", textBold: "location", colorCard: Color.LightBlue)
                        CardIpadView(image: "Location", textBeforeImage:"+ 2", imageAward: "Coin", textFirstString: "Ask more about", textSecondString: "the ", textBold: "princess", colorCard: Color.LightPink)
                        
                        
                    }
                    
                    .padding(.top, 180 * sizeScreenIpad())
                }
                
                
                
            }
            
            
            
            
            
            
            
            
            VStack{
                
                NavigationLink(destination: EmptyView()){
                    Image(systemName: "chevron.left")
                    
                        .opacity(0.7)
                        .foregroundColor(Color.BlueShadow)
                    
                    
                    Text("Back")
                        .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                        .foregroundColor(Color.BlueShadow)
                        .kerning(-0.05 * 22 * sizeScreenIpad())
                        .opacity(0.7)
                    
                    
                }
                
                Spacer()
                
            } .offset(x:-450 * sizeScreenIpad(),y: 45 * sizeScreenIpad())
            
        }
    }
}
    }

struct GeneratingTheStoryIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        GeneratingTheStoryIpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

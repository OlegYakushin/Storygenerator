//
//  GeneratingTheStoryIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct GeneratingTheStoryIpad: View {
    
    var body: some View {
        NavigationStack{
        ZStack{
            Color.Background
                .ignoresSafeArea()
            
            
            VStack{
                TopMenuIpadView()
                    .offset(x: 34 * sizeScreenIpad(), y: 0)
                Spacer()
            }
            VStack{
                Text("We are creating your story!")
                    .font(.custom("Baloo", size:55 * sizeScreenIpad()))
                    .kerning(-0.05 * 55 * sizeScreenIpad())
                    .frame(width: 629 * sizeScreenIpad(), height: 60 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                
                    .multilineTextAlignment(.center)
                
                
                
                
                Text("Let’s the magic happen!")
                
                    .font(.custom("Ubuntu-Regular", size:18))
                    .kerning(-0.05 * 18)
                    .frame(width: 334 * sizeScreenIpad(), height: 25 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                
                Image("Magic")
                    .resizable()
                    .frame(width: 672 * sizeScreenIpad(), height:430 * sizeScreenIpad())
                
                ScrollView(.horizontal, showsIndicators: false ){
                    
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
                NavigationLink(destination: EmptyView()){                    Image(systemName: "chevron.left")
                    
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
}

struct GeneratingTheStoryIpad_Previews: PreviewProvider {
    static var previews: some View {
        GeneratingTheStoryIpad()
    }
}

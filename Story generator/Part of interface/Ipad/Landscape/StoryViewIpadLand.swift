//
//  StoryViewIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct StoryViewIpadLand: View {
    @State var image: String
    @State var storyName: String
    @State var storyDescription: String
    var body: some View {
        HStack{
            Image(image)
                .resizable()
                .frame(width: 200 * sizeScreenIpad(), height:  195.65 * sizeScreenIpad())
            Spacer()
            HStack{
                VStack(alignment: .leading) {
                    HStack{
                    Text(storyName)
                        .font(.custom("Baloo-Regular", size: 35 * sizeScreenIpad()))
                        .kerning(-0.05 * 35 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .frame(width: 168 * sizeScreenIpad(), height: 40 * sizeScreenIpad())
                        
                       
                        Spacer()
                        Button(action: {}) {
                            Image("Close")
                                .resizable()
                                .frame(width: 19 * sizeScreenIpad(), height: 19 * sizeScreenIpad())
                        }
                    }
                    
                    
                   
                   
                        Text(storyDescription)
                            .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIpad()))
                            .kerning(-0.05 * 18 * sizeScreenIpad())
                            .foregroundColor(Color.BlueShadow)
                    
                    
                 
                    
                        
                    Spacer()
                    Button(action: {}) {
                        Image("playCircle")
                            .resizable()
                            .frame(width: 70 * sizeScreenIpad(), height: 69 * sizeScreenIpad())
                    }
                }
               
               
                
            }
            
        }
        .frame(width: 588.94 * sizeScreenIpad(), height: 206 * sizeScreenIpad())
    }
}

struct StoryViewIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        StoryViewIpadLand(image: "Story1", storyName: "Story name", storyDescription: "Story about princess and a dragon")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

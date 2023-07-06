//
//  StoryView.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/17/23.
//

import SwiftUI

struct StoryView: View {
    @State var image: String
    @State var storyName: String
    @State var storyDescription: String
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 138 * sizeScreenIphone(), height: 138 * sizeScreenIphone())
            Spacer()
            HStack{
                VStack(alignment: .leading) {
                    HStack{
                    Text(storyName)
                        .font(.custom("Baloo-Regular", size: 22 * sizeScreenIphone()))
                        .kerning(-0.05 * 22 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        
                       
                        Spacer()
                        Button(action: {}) {
                            Image("Close")
                                .resizable()
                                .frame(width: 12 * sizeScreenIphone(), height: 12 * sizeScreenIphone())
                        }
                    }
                    
                    .frame(width: 180 * sizeScreenIphone(), height: 20 * sizeScreenIphone())
                   
                   
                        Text(storyDescription)
                            .font(.custom("Ubuntu-Regular", size: 14 * sizeScreenIphone()))
                            .kerning(-0.05 * 14 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                    
                    
                        .frame(width: 147 * sizeScreenIphone(), height: 32 * sizeScreenIphone())
                    
                        
                    Spacer()
                    Button(action: {}) {
                        Image("playCircle")
                            .resizable()
                            .frame(width: 51 * sizeScreenIphone(), height: 50 * sizeScreenIphone())
                    }
                }
               
               
                
            }
            
        }
        .frame(width: 330 * sizeScreenIphone(), height: 138 * sizeScreenIphone())
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(image: "Story1", storyName: "Story name", storyDescription: "Story about princess and a dragon")
    }
}

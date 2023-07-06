//
//  StoryLibraryLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct StoryLibraryLand: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.BackgroundUser
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    HStack{
                        HStack{
                            NavigationLink(destination: EmptyView()){
                                Image(systemName: "chevron.left")
                                    .imageScale(.small)
                                    .opacity(0.7)
                                    .foregroundColor(Color.BlueShadow)
                                    .font(.system(size: 18 * sizeScreenIphone()))
                                
                                Text("Back")
                                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                                    .foregroundColor(Color.BlueShadow)
                                    .kerning(-0.05 * 18 * sizeScreenIphone())
                                    .opacity(0.7)
                            }
                        }
                        .padding()
                        
                        Text("Your created stories")
                            .font(.custom("Baloo-Regular", size:27 * sizeScreenIphone()))
                            .kerning(-0.05 * 27 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                        
                        
                        
                        Image("Book")
                            .resizable()
                            .frame(width:27 * sizeScreenIphone(), height: 27 * sizeScreenIphone())
                        Spacer()
                    }
                    .padding()
                    
                    
                    
                    ScrollView(showsIndicators: false){
                        VStack(spacing: 30 * sizeScreenIphone()) {
                            StoryView(image: "Story1", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                            StoryView(image: "Story2", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                            StoryView(image: "Story3", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                        }
                    }
                    .offset(x:30 * sizeScreenIphone(), y:20 * sizeScreenIphone())
                    Spacer()
                }
                HStack{
                    Spacer()
                    BottomMenuLand()
                }
                .ignoresSafeArea()
                
            }
        }
    }
}


struct StoryLibraryLand_Previews: PreviewProvider {
    static var previews: some View {
        StoryLibraryLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

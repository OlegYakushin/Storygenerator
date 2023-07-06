//
//  StoriesLibrary.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/17/23.
//

import SwiftUI

struct StoriesLibrary: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.BackgroundUser
                    .ignoresSafeArea()
                VStack{
                    NavigationLink(destination: EmptyView()){
                        Back()
                    }
                    HStack{
                        
                        Text("Your created stories")
                            .font(.custom("Baloo-Regular", size:27 * sizeScreenIphone()))
                            .kerning(-0.05 * 27 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                        
                        Spacer()
                        
                        Image("Book")
                            .resizable()
                            .frame(width: 27 * sizeScreenIphone(), height: 27 * sizeScreenIphone())
                    }.padding()
                    Spacer()
                }
                .padding()
                ScrollView(showsIndicators: false){
                    
                    VStack(spacing: 20 * sizeScreenIphone()){
                        StoryView(image: "Story1", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                        StoryView(image: "Story2", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                        StoryView(image: "Story3", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                    }
                    
                }
                .padding(.top, 130 * sizeScreenIphone())
                VStack{
                    Spacer()
                    BottomMenu()
                }
                .ignoresSafeArea()
                
            }
        }
    }
}

struct StoriesLibrary_Previews: PreviewProvider {
    static var previews: some View {
        StoriesLibrary()
    }
}

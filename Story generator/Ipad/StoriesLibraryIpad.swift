//
//  StoriesLibraryIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct StoriesLibraryIpad: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.BackgroundUser
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        NavigationLink(destination: EmptyView()){
                            HStack{
                                
                                Image(systemName: "chevron.left")
                                    .imageScale(.small)
                                    .opacity(0.7)
                                    .foregroundColor(Color.BlueShadow)
                                    .font(.system(size: 22 * sizeScreenIpad()))
                                
                                Text("Back")
                                    .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                                    .foregroundColor(Color.BlueShadow)
                                    .kerning(-0.05 * 22 * sizeScreenIpad())
                                    .opacity(0.7)
                            }
                        }
                        .padding()
                        
                        Text("Your stories")
                            .font(.custom("Baloo-Regular", size:55 * sizeScreenIpad()))
                            .kerning(-0.05 * 55 * sizeScreenIpad())
                            .foregroundColor(Color.BlueShadow)
                        
                        Spacer()
                        
                        Image("Book")
                            .resizable()
                            .frame(width: 55 * sizeScreenIpad(), height: 55 * sizeScreenIpad())
                    }.padding()
                    Spacer()
                }
                .padding()
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 20 * sizeScreenIpad()){
                        StoryViewIpad(image: "Story1", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                        StoryViewIpad(image: "Story2", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                        StoryViewIpad(image: "Story3", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                    }
                    
                }
                .padding(.leading, -90 * sizeScreenIpad())
                .padding(.top, 130 * sizeScreenIpad())
                
                VStack{
                    Spacer()
                    BottomMenuIpad()
                }
                .ignoresSafeArea()
                
            }
        }
    }
}

struct StoriesLibraryIpad_Previews: PreviewProvider {
    static var previews: some View {
        StoriesLibraryIpad()
    }
}

//
//  StoryLibraryIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct StoryLibraryIpadLand: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.BackgroundUser
                    .ignoresSafeArea()
                VStack(alignment: .leading){
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
                        
                        
                        
                        Image("Book")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 55/834, height: UIScreen.main.bounds.width * 55/834)
                        Spacer()
                    }
                    .padding()
                    
                    
                    
                    ScrollView(showsIndicators: false){
                        
                        VStack(alignment: .leading){
                            StoryViewIpad(image: "Story1", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                            StoryViewIpad(image: "Story2", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                            StoryViewIpad(image: "Story3", storyName: "Story name", storyDescription: "Story about princess and a dragon")
                        }
                    }
                    .offset(x:50 * sizeScreenIpad(), y:0)
                    Spacer()
                }
                HStack{
                    Spacer()
                    BottomMenuIpadLand()
                }
                .ignoresSafeArea()
                
            }
        }
    }
}


struct StoryLibraryIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        StoryLibraryIpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

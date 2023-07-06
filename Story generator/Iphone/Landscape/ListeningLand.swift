//
//  ListeningLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct ListeningLand: View {

    var body: some View {
        NavigationStack{
            ZStack{
                Color.Background
                    .ignoresSafeArea()
                
                VStack(alignment: .leading){
                    TopMenuLandscapeView()
                        .offset(x: 33 * sizeScreenIphone(), y: 0)
                        .padding()
                    
                    Text("A story about a princess and a dragon")
                        .font(.custom("Baloo", size:35 * sizeScreenIphone()))
                        .kerning(-0.05 * 35 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        .padding(.horizontal, 30 * sizeScreenIphone())
                        .offset(x: 25 * sizeScreenIphone(), y: -33 * sizeScreenIphone())
                    
                    Spacer()
                }
                
                HStack{
                    
                    Image("Dragon")
                        .resizable()
                        .frame(width: 337 * sizeScreenIphone(), height: 235 * sizeScreenIphone())
                        .offset(x:20 * sizeScreenIphone(),y: 0)
                    
                    
                    
                    
                    
                    
                    HStack(alignment: .bottom){
                        VStack{
                            Text("Once upon a time, a little princess lived in a huge castle on the mountain.")
                                .font(.custom("Ubuntu-Bold", size:25 * sizeScreenIphone()))
                            
                                .kerning(-0.05 * 25 * sizeScreenIphone())
                                .frame(width: 333 * sizeScreenIphone(), height: 87 * sizeScreenIphone())
                            
                            
                                .foregroundColor(Color.BlueShadow)
                            
                            
                                .multilineTextAlignment(.center)
                                .opacity(0.7)
                                .offset(x:50 * sizeScreenIphone(),y: 0)
                            
                            HStack{
                                
                                Button(action: {}) {
                                    Image("Left")
                                        .resizable()
                                        .frame(width: 24 * sizeScreenIphone(), height: 24 * sizeScreenIphone())
                                        .padding(.horizontal, 20 * sizeScreenIphone())
                                    
                                }
                                
                                
                                
                                Button(action: {}) {
                                    ZStack {
                                        
                                        Circle()
                                            .frame(width: 76 * sizeScreenIphone(), height: 76 * sizeScreenIphone())
                                            .foregroundColor(Color.BluePause)
                                            .overlay(
                                                Circle()
                                                    .frame(width: 40.3 * sizeScreenIphone(), height: 40.3 * sizeScreenIphone())
                                                    .foregroundColor(Color.BlueBottomSelected)
                                                    .overlay(
                                                        HStack{
                                                            RoundedRectangle(cornerRadius: 5 * sizeScreenIphone())
                                                                .frame(width: 5.53 * sizeScreenIphone(), height: 17.27 * sizeScreenIphone())
                                                                .padding(.trailing, -4 * sizeScreenIphone())
                                                                .foregroundColor(Color.BlueShadow)
                                                            RoundedRectangle(cornerRadius: 5 * sizeScreenIphone())
                                                                .frame(width: 5.53 * sizeScreenIphone(), height: 17.27 * sizeScreenIphone())
                                                                .foregroundColor(Color.BlueShadow)
                                                        }
                                                    )
                                            )
                                        
                                    }
                                    
                                    
                                    
                                    
                                }
                                
                                Button(action: {}) {
                                    Image("Right")
                                    
                                        .resizable()
                                        .frame(width: 24 * sizeScreenIphone(), height: 24 * sizeScreenIphone())
                                    
                                        .padding(.horizontal, 20 * sizeScreenIphone())
                                }
                                
                            }
                            .offset(x:150 * sizeScreenIphone(),y: 40)
                        }
                    }
                    
                    
                }
                .offset(x: -70 * sizeScreenIphone(), y: 75)
                
                
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


struct ListeningLand_Previews: PreviewProvider {
    static var previews: some View {
        ListeningLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

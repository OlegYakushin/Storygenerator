//
//  Trophies.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/17/23.
//

import SwiftUI

struct Trophies: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.BackgroundUser
                    .ignoresSafeArea()
                VStack{
                 
                    
                    NavigationLink(destination: EmptyView()){
                        Back()
                        
                    }
              
                    .padding(.horizontal)
                    
                    HStack{
                        
                        Text("Your Trophies")
                            .font(.custom("Baloo-Regular", size:27 * sizeScreenIphone()))
                            .kerning(-0.05 * 27 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                        
                        
                        Spacer()
                        
                        Image("Trophies")
                            .resizable()
                            .frame(width: 27 * sizeScreenIphone(), height: 27 * sizeScreenIphone())
                    }.padding()
                        .padding()
                    
                    
                    
                    
                    VStack(alignment: .leading){
                        HStack(spacing: 30){
                            VStack{
                                Circle()
                                    .frame(width: 95 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueTrohy)
                                    .overlay(
                                        Image("Trophy")
                                            .resizable()
                                            .frame(width: 77 * sizeScreenIphone(), height: 78 * sizeScreenIphone())
                                    )
                                Text("Trophy 1")
                                    .font(.custom("Ubuntu-Regular", size:14 * sizeScreenIphone()))
                                    .kerning(-0.05 * 14 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueShadow)
                                
                            }
                            VStack{
                                Circle()
                                    .frame(width: 95 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
                                    .foregroundColor(Color.LightPink)
                                    .overlay(
                                        Image("Trophy2")
                                            .resizable()
                                            .frame(width: 95 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
                                    )
                                Text("Trophy 2")
                                    .font(.custom("Ubuntu-Regular", size:14 * sizeScreenIphone()))
                                    .kerning(-0.05 * 14 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueShadow)
                                
                            }
                            VStack{
                                Circle()
                                    .frame(width: 95 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
                                    .foregroundColor(Color.Blue)
                                    .overlay(
                                        Image("Trophy3")
                                            .resizable()
                                            .frame(width: 95 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
                                    )
                                Text("Trophy 3")
                                    .font(.custom("Ubuntu-Regular", size:14 * sizeScreenIphone()))
                                    .kerning(-0.05 * 14 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueShadow)
                                
                            }
                        }
                        
                        HStack(spacing: 30){
                            VStack{
                                Circle()
                                    .frame(width: 95 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
                                    .foregroundColor(Color.LightPink)
                                    .overlay(
                                        ZStack{
                                            Image("Trophy2")
                                                .resizable()
                                                .frame(width: 95 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
                                            Image("PadLock")
                                                .resizable()
                                                .frame(width: 35 * sizeScreenIphone(), height: 35 * sizeScreenIphone())
                                                .offset(x: 35 * sizeScreenIphone(), y: 20 * sizeScreenIphone())
                                        }
                                    )
                                Text("Trophy 4")
                                    .font(.custom("Ubuntu-Regular", size:14 * sizeScreenIphone()))
                                    .kerning(-0.05 * 14 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueShadow)
                                
                            }
                            .opacity(0.5)
                            VStack{
                                Circle()
                                    .frame(width: 95 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
                                    .foregroundColor(Color.Blue)
                                    .opacity(0.5)
                                    .overlay(
                                        ZStack{
                                            Image("Trophy3")
                                                .resizable()
                                                .frame(width: 95 * sizeScreenIphone(), height: 95 * sizeScreenIphone())
                                                .opacity(0.5)
                                            Image("PadLock")
                                                .resizable()
                                                .frame(width: 35 * sizeScreenIphone(), height: 35 * sizeScreenIphone())
                                                .offset(x: 35 * sizeScreenIphone(), y: 20 * sizeScreenIphone())
                                            
                                            
                                        }
                                    )
                                Text("Trophy 5")
                                    .font(.custom("Ubuntu-Regular", size:14 * sizeScreenIphone()))
                                    .kerning(-0.05 * 14 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueShadow)
                                    .opacity(0.5)
                                
                                
                            }
                            
                            
                            
                        }
                        Spacer()
                    }
                    .offset(x: 0, y:20 * sizeScreenIphone())
                    
                }
                
                VStack{
                    Spacer()
                    BottomMenu()
                }
                .ignoresSafeArea()
                
            }
        }
    }
}

struct Trophies_Previews: PreviewProvider {
    static var previews: some View {
        Trophies()
    }
}

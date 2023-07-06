//
//  TrophiesIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct TrophiesIpadLand: View {
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
                        
                        Text("Your Trophies")
                            .font(.custom("Baloo-Regular", size:55 * sizeScreenIpad()))
                            .kerning(-0.05 * 55 * sizeScreenIpad())
                            .foregroundColor(Color.BlueShadow)
                        
                        
                        
                        Image("Trophies")
                            .resizable()
                            .frame(width: 55 * sizeScreenIpad(), height: 55 * sizeScreenIpad())
                        Spacer()
                    }
                    .padding()
                    
                    
                    
                    
                    
                    VStack(alignment: .leading, spacing: 40 * sizeScreenIpad()){
                        HStack(spacing: 40 * sizeScreenIpad()){
                            VStack{
                                Circle()
                                    .frame(width: 140 * sizeScreenIpad(), height: 139 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueTrohy)
                                    .overlay(
                                        Image("Trophy")
                                            .resizable()
                                            .frame(width: 113 * sizeScreenIpad(), height: 114 * sizeScreenIpad())
                                    )
                                Text("Trophy 1")
                                    .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIpad()))
                                    .kerning(-0.05 * 16 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                
                            }
                            VStack{
                                Circle()
                                    .frame(width: 140 * sizeScreenIpad(), height: 139 * sizeScreenIpad())
                                    .foregroundColor(Color.Pink)
                                    .overlay(
                                        Image("OpenBookIpad")
                                            .resizable()
                                            .frame(width: 102 * sizeScreenIpad(), height: 101 * sizeScreenIpad())
                                    )
                                Text("Trophy 2")
                                    .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIpad()))
                                    .kerning(-0.05 * 16 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                
                            }
                            VStack{
                                Circle()
                                    .frame(width:140 * sizeScreenIpad(), height: 139 * sizeScreenIpad())
                                    .foregroundColor(Color.Blue)
                                    .overlay(
                                        Image("TrophyIpad")
                                            .resizable()
                                            .frame(width: 101 * sizeScreenIpad(), height: 101 * sizeScreenIpad())
                                    )
                                Text("Trophy 3")
                                    .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIpad()))
                                    .kerning(-0.05 * 16 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                
                            }
                            VStack{
                                Circle()
                                    .frame(width: 140 * sizeScreenIpad(), height: 139 * sizeScreenIpad())
                                    .foregroundColor(Color.Pink)
                                    .opacity(0.5)
                                    .overlay(
                                        ZStack{
                                            Image("OpenBookIpad")
                                                .resizable()
                                                .frame(width: 102 * sizeScreenIpad(), height: 101 * sizeScreenIpad())
                                                .opacity(0.5)
                                            Image("PadLock")
                                                .resizable()
                                                .frame(width: 52 * sizeScreenIpad(), height: 52 * sizeScreenIpad())
                                                .offset(x: 30 * sizeScreenIpad(), y: 40 * sizeScreenIpad())
                                            
                                            
                                        }
                                    )
                                Text("Trophy 4")
                                    .font(.custom("Ubuntu-Regular", size:14 * sizeScreenIpad()))
                                    .kerning(-0.05 * 14 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                    .opacity(0.5)
                                
                                
                            }
                            VStack{
                                Circle()
                                    .frame(width: 140 * sizeScreenIpad(), height: 139 * sizeScreenIpad())
                                    .foregroundColor(Color.Pink)
                                    .opacity(0.5)
                                    .overlay(
                                        ZStack{
                                            Image("OpenBookIpad")
                                                .resizable()
                                                .frame(width: 102 * sizeScreenIpad(), height: 101 * sizeScreenIpad())
                                                .opacity(0.5)
                                            Image("PadLock")
                                                .resizable()
                                                .frame(width: 52 * sizeScreenIpad(), height: 52 * sizeScreenIpad())
                                                .offset(x: 30 * sizeScreenIpad(), y: 40 * sizeScreenIpad())
                                            
                                            
                                        }
                                    )
                                Text("Trophy 5")
                                    .font(.custom("Ubuntu-Regular", size:14 * sizeScreenIpad()))
                                    .kerning(-0.05 * 14 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                    .opacity(0.5)
                                
                                
                            }
                            Spacer()
                        }
                        
                        
                        
                    }
                    .offset(x:50 * sizeScreenIpad(),y:0)
                    .padding()
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


struct TrophiesIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        TrophiesIpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

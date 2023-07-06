//
//  UserProfile2.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/16/23.
//

import SwiftUI

struct UserProfile2: View {

        @State var userName: String
        
    var body: some View {
        NavigationStack{
            ZStack{
                Color.BackgroundUser
                    .ignoresSafeArea()
                VStack{
                    NavigationLink(destination: EmptyView()){
                        Back()
                    }
                    .padding()
                    VStack{
                        HStack{
                            Text(userName)
                                .font(.custom("Baloo", size:30 * sizeScreenIphone()))
                                .kerning(-0.05 * 30 * sizeScreenIphone())
                                .foregroundColor(Color.BlueShadow)
                            
                            
                            Spacer()
                            RoundedRectangle(cornerRadius: 20 * sizeScreenIphone())
                                .frame(width: 162 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                                .foregroundColor(Color.Blue)
                            
                                .overlay(
                                    
                                    HStack(spacing: 5 * sizeScreenIphone()){
                                        Button(action: {}) {
                                            Image("Coin")
                                                .resizable()
                                                .frame(width: 35 * sizeScreenIphone(), height: 35 * sizeScreenIphone())
                                            
                                        }
                                        .padding(.leading, 10 * sizeScreenIphone())
                                        
                                        VStack(alignment: .leading, spacing: -10 * sizeScreenIphone()) {
                                            Text("9")
                                                .font(.custom("Baloo-Regular", size: 25 * sizeScreenIphone()))
                                                .foregroundColor(Color.white)
                                                .kerning(-0.05 * 25 * sizeScreenIphone())
                                            
                                            Text("stars")
                                                .font(.custom("Poppins-Regular", size: 11))
                                                .foregroundColor(Color.white)
                                                .kerning(-0.05 * 11 * sizeScreenIphone())
                                            
                                        }
                                        Spacer()
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 36 * sizeScreenIphone(), height: 36 * sizeScreenIphone())
                                            .overlay(
                                                Text("+")
                                                    .font(.custom("Poppins-Regular", size:25 * sizeScreenIphone()))
                                                    .foregroundColor(Color.Blue)
                                            )
                                        Spacer()
                                        Spacer()
                                        
                                    }
                                )
                        }
                        .offset(x: 21 * sizeScreenIphone(), y: 0)
                        
                        
                    }
                    VStack{
                        
                        HStack{
                            Spacer()
                            Spacer()
                            Spacer()
                            HStack(spacing: 14 * sizeScreenIphone()){
                                VStack{
                                    Image("Trophy1")
                                        .frame(width: 55 * sizeScreenIphone(), height: 54 * sizeScreenIphone())
                                    Text("Trophy 1")
                                        .font(.custom("Ubuntu-Regular", size:11 * sizeScreenIphone()))
                                        .kerning(-0.05 * 11 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                }
                                VStack{
                                    Image("Trophy2")
                                        .frame(width: 55 * sizeScreenIphone(), height: 54 * sizeScreenIphone())
                                    Text("Trophy 2")
                                        .font(.custom("Ubuntu-Regular", size:11))
                                        .kerning(-0.05 * 11 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                }
                                VStack{
                                    Image("Trophy3")
                                        .frame(width: 55 * sizeScreenIphone(), height: 54 * sizeScreenIphone())
                                    Text("Trophy 3")
                                        .font(.custom("Ubuntu-Regular", size:11 * sizeScreenIphone()))
                                        .kerning(-0.05 * 11 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                }
                            }
                            Spacer()
                            
                            HStack{
                                Spacer()
                                Spacer()
                                Button(action: {}) {
                                    Text("View all")
                                        .font(.custom("Baloo-Regular", size:16 * sizeScreenIphone()))
                                        .foregroundColor(Color.TextBlue)
                                        .kerning(-0.05 * 16 * sizeScreenIphone())
                                    
                                    Image(systemName: "chevron.right")
                                        .imageScale(.small)
                                    
                                        .foregroundColor(Color.TextBlue)
                                        .font(.system(size: 24 * sizeScreenIphone()))
                                }
                                Spacer()
                            }
                            
                            
                            
                        }
                        
                        
                    }
                    
                    VStack{
                        Button(action: {}) {
                            Text("Settings")
                                .font(.custom("Baloo-Regular", size:16 * sizeScreenIphone()))
                                .foregroundColor(Color.BlueShadow)
                                .kerning(-0.05 * 16 * sizeScreenIphone())
                            Spacer()
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                            
                                .foregroundColor(Color.BlueShadow)
                                .font(.system(size: 24 * sizeScreenIphone()))
                        }
                        .padding()
                    }
                    
                    VStack{
                        Rectangle()
                            .fill(Color.TextBlue)
                            .frame(width: 349 * sizeScreenIphone(), height: 1)
                    }
                    Spacer()
                    
                    
                    VStack{
                        HStack{
                            Spacer()
                            Text("Delete my data")
                                .font(.custom("Baloo-Regular", size:16 * sizeScreenIphone()))
                                .foregroundColor(Color.BlueShadow)
                                .kerning(-0.05 * 16 * sizeScreenIphone())
                                .overlay(
                                    Rectangle()
                                        .frame(height: 1)
                                        .foregroundColor(Color.BlueShadow)
                                        .offset(y: 5 * sizeScreenIphone())
                                )
                            Spacer()
                            Spacer()
                            Text("Log Out")
                                .font(.custom("Baloo-Regular", size:16 * sizeScreenIphone()))
                                .foregroundColor(Color.TextBlue)
                                .kerning(-0.05 * 16 * sizeScreenIphone())
                            Image("LogOut")
                                .frame(width: 24 * sizeScreenIphone(), height: 24 * sizeScreenIphone())
                            
                            Spacer()
                        }
                        HStack{
                            
                            Image("Support")
                                .frame(width: 24 * sizeScreenIphone(), height: 24 * sizeScreenIphone())
                            
                            Text("Support")
                                .font(.custom("Baloo-Regular", size:16 * sizeScreenIphone()))
                                .foregroundColor(Color.BlueShadow)
                                .kerning(-0.05 * 16 * sizeScreenIphone())
                            
                        }
                        
                        
                    }
                    
                }
                
                
            }
        }
    }
    }

    struct UserProfile2_Previews: PreviewProvider {
        static var previews: some View {
            UserProfile2(userName: "John")
        }
    }

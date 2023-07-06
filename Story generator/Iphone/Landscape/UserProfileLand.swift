//
//  UserProfileLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct UserProfileLand: View {
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
                    .offset(x: 0, y: 50 * sizeScreenIphone())
                    
                    Spacer()
                    
                }
                VStack{
                    HStack{
                        Text(userName)
                            .font(.custom("Baloo", size:30 * sizeScreenIphone()))
                            .kerning(-0.05 * 30)
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
                                    .padding(.leading, 18 * sizeScreenIphone())
                                    
                                    VStack(alignment: .leading, spacing: -10 * sizeScreenIphone()) {
                                        Text("9")
                                            .font(.custom("Baloo-Regular", size: 25 * sizeScreenIphone()))
                                            .foregroundColor(Color.white)
                                            .kerning(-0.05 * 25 * sizeScreenIphone())
                                        
                                        Text("stars")
                                            .font(.custom("Poppins-Regular", size: 11 * sizeScreenIphone()))
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
                    .offset(x: 70 * sizeScreenIphone(), y: 40 * sizeScreenIphone())
                    Spacer()
                    
                }
                HStack{
                    
                    VStack(alignment:.leading){
                        
                        HStack{
                            
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
                                        .font(.custom("Ubuntu-Regular", size:11 * sizeScreenIphone()))
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
                                
                            }
                            .offset(x: -50 * sizeScreenIphone(), y: 0)
                            
                            
                            
                        }
                        Text("Wanna share the stories across devices?")
                            .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIphone()))
                            .foregroundColor(Color.BlueShadow)
                            .kerning(-0.05 * 16 * sizeScreenIphone())
                            .opacity(0.7)
                            .offset(x: 0, y: 80 * sizeScreenIphone())
                        Image("SignInWithApple")
                            .frame(width: 325 * sizeScreenIphone())
                            .offset(x: 0, y: 80 * sizeScreenIphone())
                        
                    }
                    Spacer()
                    
                    VStack{
                        
                        Button(action: {}) {
                            HStack(spacing: 200){
                                Text("Settings")
                                    .font(.custom("Baloo-Regular", size:16 * sizeScreenIphone()))
                                    .foregroundColor(Color.BlueShadow)
                                    .kerning(-0.05 * 16 * sizeScreenIphone())
                                
                                Image(systemName: "chevron.right")
                                    .imageScale(.small)
                                
                                    .foregroundColor(Color.BlueShadow)
                                    .font(.system(size: 24 * sizeScreenIphone()))
                            }
                            
                        }
                        
                        .offset(x: 0, y: -20 * sizeScreenIphone())
                        
                        
                        Rectangle()
                            .fill(Color.TextBlue)
                            .frame(width: 349 * sizeScreenIphone(), height: 1)
                            .offset(x: 0, y: -20)
                        
                        HStack(spacing: 100 * sizeScreenIphone()){
                            HStack{
                                Image("Support")
                                    .frame(width: 24 * sizeScreenIphone(), height: 24 * sizeScreenIphone())
                                
                                Text("Support")
                                    .font(.custom("Baloo-Regular", size:16 * sizeScreenIphone()))
                                    .foregroundColor(Color.BlueShadow)
                                    .kerning(-0.05 * 16 * sizeScreenIphone())
                            }
                            
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
                            
                        }
                        .offset(x: 0, y: 100 * sizeScreenIphone())
                        
                    }
                    
                }
                
                
            }
        }
    }
}

struct UserProfileLand_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileLand(userName: "John")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

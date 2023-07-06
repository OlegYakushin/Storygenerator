//
//  UserProfile2IpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct UserProfile2IpadLand: View {
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
                                .font(.custom("Baloo", size:55 * sizeScreenIpad()))
                                .kerning(-0.05 * 55 * sizeScreenIpad())
                                .foregroundColor(Color.BlueShadow)
                            
                            
                            Spacer()
                            RoundedRectangle(cornerRadius: 50 * sizeScreenIpad())
                                .frame(width: 229 * sizeScreenIpad(), height: 74 * sizeScreenIpad())
                                .foregroundColor(Color.Blue)
                            
                                .overlay(
                                    
                                    HStack(spacing: 5 * sizeScreenIpad()){
                                        Button(action: {}) {
                                            Image("Coin")
                                                .resizable()
                                                .frame(width: 56 * sizeScreenIpad(), height: 56 * sizeScreenIpad())
                                            
                                        }
                                        .padding(.leading, 10 * sizeScreenIpad())
                                        
                                        VStack(alignment: .leading, spacing: -10 * sizeScreenIpad()) {
                                            Text("9")
                                                .font(.custom("Baloo-Regular", size: 35 * sizeScreenIpad()))
                                                .foregroundColor(Color.white)
                                                .kerning(-0.05 * 35 * sizeScreenIpad())
                                            
                                            Text("stars")
                                                .font(.custom("Poppins-Regular", size: 14 * sizeScreenIpad()))
                                                .foregroundColor(Color.white)
                                                .kerning(-0.05 * 14 * sizeScreenIpad())
                                            
                                        }
                                        Spacer()
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 56 * sizeScreenIpad(), height: 56 * sizeScreenIpad())
                                            .overlay(
                                                Text("+")
                                                    .font(.custom("Baloo-Regular", size:30 * sizeScreenIpad()))
                                                    .foregroundColor(Color.Blue)
                                            )
                                        Spacer()
                                        Spacer()
                                        
                                    }
                                )
                        }
                        .offset(x: 30 * sizeScreenIpad(), y: 0)
                        
                        
                    }
                    VStack{
                        
                        HStack{
                            Spacer()
                            Spacer()
                            Spacer()
                            HStack(spacing: 14 * sizeScreenIpad()){
                                VStack{
                                    Image("Trophy1")
                                        .resizable()
                                        .frame(width: 109 * sizeScreenIpad(), height: 107 * sizeScreenIpad())
                                    Text("Trophy 1")
                                        .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                                        .kerning(-0.05 * 22 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                }
                                VStack{
                                    Image("Trophy2")
                                        .resizable()
                                        .frame(width: 109 * sizeScreenIpad(), height: 107 * sizeScreenIpad())
                                    Text("Trophy 2")
                                        .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                                        .kerning(-0.05 * 22 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                }
                                VStack{
                                    Image("Trophy3")
                                        .resizable()
                                        .frame(width: 109 * sizeScreenIpad(), height: 107 * sizeScreenIpad())
                                    Text("Trophy 3")
                                        .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                                        .kerning(-0.05 * 22 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                }
                            }
                            Spacer()
                            
                            HStack{
                                Spacer()
                                
                                Button(action: {}) {
                                    Text("View all")
                                        .font(.custom("Baloo-Regular", size:22 * sizeScreenIpad()))
                                        .foregroundColor(Color.TextBlue)
                                        .kerning(-0.05 * 22 * sizeScreenIpad())
                                    
                                    Image(systemName: "chevron.right")
                                        .imageScale(.small)
                                    
                                        .foregroundColor(Color.TextBlue)
                                        .font(.system(size: 34 * sizeScreenIpad()))
                                }
                                .padding()
                            }
                            
                            
                            
                        }
                        
                        
                    }
                    
                    VStack{
                        Button(action: {}) {
                            Text("Settings")
                                .font(.custom("Baloo-Regular", size:27 * sizeScreenIpad()))
                                .foregroundColor(Color.BlueShadow)
                                .kerning(-0.05 * 27 * sizeScreenIpad())
                            Spacer()
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                            
                                .foregroundColor(Color.BlueShadow)
                                .font(.system(size: 34 * sizeScreenIpad()))
                        }
                        .padding()
                        
                        
                        
                        VStack{
                            Rectangle()
                                .fill(Color.TextBlue)
                                .frame(width: 1061 * sizeScreenIpad(), height: 1)
                        }
                    }
                    .offset(x: 0, y: 100 * sizeScreenIpad())
                    Spacer()
                    
                    
                    VStack{
                        HStack{
                            Spacer()
                            Button(action: {}) {
                                Image("Support")
                                    .frame(width: 24 * sizeScreenIpad(), height: 24 * sizeScreenIpad())
                                
                                Text("Support")
                                    .font(.custom("Baloo-Regular", size:22))
                                    .foregroundColor(Color.BlueShadow)
                                    .kerning(-0.05 * 22 * sizeScreenIpad())
                            }
                            Spacer()
                            Button(action: {}) {
                                Text("Delete my data")
                                    .font(.custom("Baloo-Regular", size:22 * sizeScreenIpad()))
                                    .foregroundColor(Color.BlueShadow)
                                    .kerning(-0.05 * 22 * sizeScreenIpad())
                                    .overlay(
                                        Rectangle()
                                            .frame(height: 1)
                                            .foregroundColor(Color.BlueShadow)
                                            .offset(y: 5 * sizeScreenIpad())
                                    )
                            }
                            Spacer()
                            Button(action: {}) {
                                
                                Text("Log Out")
                                    .font(.custom("Baloo-Regular", size:22 * sizeScreenIpad()))
                                    .foregroundColor(Color.TextBlue)
                                    .kerning(-0.05 * 22 * sizeScreenIpad())
                                Image("LogOut")
                                    .frame(width: 24 * sizeScreenIpad(), height: 24 * sizeScreenIpad())
                            }
                            Spacer()
                        }
                        
                        
                    }
                    
                }
                
                
            }
        }
    }
}

    struct UserProfile2IpadLand_Previews: PreviewProvider {
        static var previews: some View {
            UserProfile2IpadLand(userName: "John")
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }

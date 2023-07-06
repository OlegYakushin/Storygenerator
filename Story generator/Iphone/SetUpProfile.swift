//
//  SetUpProfile.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/14/23.
//

import SwiftUI

struct SetUpProfile: View {
    @State private var genderVoice = "Male"
    @State private var gender = "Male"
    @State private var sex = ["Male", "Female"]
    @State private var selectedAge = 5
    @State private var isPickerVisible = false
    @State private var isPickerSexVisible = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.BackgroundUser
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    NavigationLink(destination: EmptyView()) {
                        Back()
                    }
                    .padding()
                    
                    VStack(alignment: .leading) {
                        Text("Settings")
                            .frame(width: 98 * sizeScreenIphone(), height: 38 * sizeScreenIphone())
                            .font(.custom("Poppins-Bold", size: 25 * sizeScreenIphone()))
                            .kerning(-0.05 * 25)
                            .foregroundColor(Color.BlueShadow)
                        
                        Text("How old is the child?")
                            .frame(width: 153 * sizeScreenIphone(), height: 21 * sizeScreenIphone())
                            .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIphone()))
                            .kerning(-0.05 * 18 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                        
                        RoundedRectangle(cornerRadius: 15 * sizeScreenIphone())
                            .foregroundColor(Color.white)
                            .frame(width: 309 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                            .overlay(
                                HStack {
                                   
                                    Text("\(selectedAge) years")
                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIphone()))
                                        .kerning(-0.05 * 16 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                        .padding()
                                    Spacer()
                                    Button(action: {
                                        isPickerVisible = true
                                    }) {
                                        Image("Arrowdown")
                                            .padding()
                                    }
                                }
                            )
                            .onTapGesture {
                                isPickerVisible = true
                            }
                       
                        
                        Text("Please choose child gender")
                            .frame(width: 204 * sizeScreenIphone(), height: 21 * sizeScreenIphone())
                            .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIphone()))
                            .kerning(-0.05 * 18 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                        
                        RoundedRectangle(cornerRadius: 15 * sizeScreenIphone())
                            .foregroundColor(Color.white)
                            .frame(width: 309 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                            .overlay(
                                HStack {
                                    Text(gender)
                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIphone()))
                                        .kerning(-0.05 * 16 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                        .opacity(0.7)
                                        .padding()
                                    Spacer()
                                    Button(action: {
                                        isPickerSexVisible = true
                                    }) {
                                        Image("Arrowdown")
                                            .padding()
                                    }
                                }
                            )
                            .onTapGesture {
                                isPickerSexVisible = true
                            }
                        
                    }
                    .padding(.leading, 20 * sizeScreenIphone())
                    
                    VStack(alignment: .leading) {
                        Text("Wanna choose particular moral for the story?")
                            .frame(width: 189 * sizeScreenIphone(), height: 42 * sizeScreenIphone())
                            .font(.custom("Ubuntu-Regular", size: 18 * sizeScreenIphone()))
                            .kerning(-0.05 * 18 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                        
                        HStack(spacing: 2 * sizeScreenIphone()) {
                            MoralView(text: "Bravery", color: Color.Blue)
                            MoralView(text: "Kindness", color: Color.LightBlue)
                            MoralView(text: "Honesty", color: Color.Pink)
                        }
                        
                        HStack(spacing: 2 * sizeScreenIphone()) {
                            MoralView(text: "Generosity", color: Color.Blue)
                            MoralView(text: "Search more", color: Color.white)
                        }
                        
                        Text("The voice of the story:")
                            .frame(width: 177 * sizeScreenIphone(), height: 27 * sizeScreenIphone())
                            .font(.custom("Poppins-Regular", size: 18 * sizeScreenIphone()))
                            .kerning(-0.05 * 18 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                        
                        HStack {
                            if genderVoice == "Male" {
                                Button(action: {
                                    genderVoice = "Male"
                                }) {
                                    Circle()
                                        .frame(width: 21 * sizeScreenIphone(), height: 21 * sizeScreenIphone())
                                        .foregroundColor(Color.white)
                                        .overlay(
                                            Circle()
                                                .frame(width: 13 * sizeScreenIphone(), height: 13 * sizeScreenIphone())
                                                .foregroundColor(Color.TextBlue)
                                        )
                                    
                                    Text("Male")
                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIphone()))
                                        .kerning(-0.05 * 16 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                }
                            } else {
                                Button(action: {
                                    genderVoice = "Male"
                                }) {
                                    Circle()
                                        .frame(width: 21 * sizeScreenIphone(), height: 21 * sizeScreenIphone())
                                        .foregroundColor(Color.white)
                                }
                                
                                Text("Male")
                                    .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIphone()))
                                    .kerning(-0.05 * 16 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueShadow)
                                    .opacity(0.6)
                            }
                        }
                        
                        HStack {
                            if genderVoice == "Female" {
                                Button(action: {
                                    genderVoice = "Female"
                                }) {
                                    Circle()
                                        .frame(width: 21 * sizeScreenIphone(), height: 21 * sizeScreenIphone())
                                        .foregroundColor(Color.white)
                                        .overlay(
                                            Circle()
                                                .frame(width: 13 * sizeScreenIphone(), height: 13 * sizeScreenIphone())
                                                .foregroundColor(Color.TextBlue)
                                        )
                                    Text("Female")
                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIphone()))
                                        .kerning(-0.05 * 16 * sizeScreenIphone())
                                        .foregroundColor(Color.BlueShadow)
                                }
                            } else {
                                Button(action: {
                                    genderVoice = "Female"
                                }) {
                                    Circle()
                                        .frame(width: 21 * sizeScreenIphone(), height: 21 * sizeScreenIphone())
                                        .foregroundColor(Color.white)
                                }
                                
                                Text("Female")
                                    .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIphone()))
                                    .kerning(-0.05 * 16 * sizeScreenIphone())
                                    .foregroundColor(Color.BlueShadow)
                                    .opacity(0.6)
                            }
                        }
                    }
                    .padding(.leading, 20 * sizeScreenIphone())
                    
                    VStack {
                        Spacer()
                        Button(action: {}) {
                            ButtonView(color: Color.Green, colorText: Color.DarkGreen, colorShadow: Color.DarkGreen, text: "Save changes", clearButton: false)
                        }
                        
                        Button(action: {}) {
                            ButtonView(color: Color.clear, colorText: Color.DarkPink, colorShadow: Color.clear, text: "Cancel", clearButton: true)
                        }
                        .padding()
                    }
                }
                if isPickerVisible == true{
                    ZStack{
                        Color.clear
                                                            .background(
                                                                Color.black.opacity(0.3)
                                                                    .blur(radius: 10)
                                                            )
                       
                        ScrollView(showsIndicators: false){
                         
                        ForEach(0...18, id: \.self) { age in
                            
                                
                                    RoundedRectangle(cornerRadius: 15 * sizeScreenIphone())
                                        .foregroundColor(Color.white)
                                        .frame(width: 309 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                                        .overlay(
                                            HStack {
                                                Button(action: {
                                                    selectedAge = age
                                                    isPickerVisible = false
                                                }) {
                                                    Text("\(age) years")
                                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIphone()))
                                                        .kerning(-0.05 * 16 * sizeScreenIphone())
                                                        .foregroundColor(Color.BlueShadow)
                                                        .opacity(0.7)
                                                        .padding()
                                                    Spacer()
                                                }
                                            }
                                        )
                                
                            }
                        }
                    }
                    .frame(width: 320 * sizeScreenIphone(), height: 200 * sizeScreenIphone())
                    .offset(x:-20 * sizeScreenIphone(), y: -95 * sizeScreenIphone())
                }
                if isPickerSexVisible == true{
                    ZStack{
                        Color.clear
                                                            .background(
                                                                Color.black.opacity(0.3)
                                                                    .blur(radius: 10)
                                                            )
                       
                        ScrollView(showsIndicators: false){
                         
                        ForEach(sex, id: \.self) { selectedgender in
                            
                                
                                    RoundedRectangle(cornerRadius: 15 * sizeScreenIphone())
                                        .foregroundColor(Color.white)
                                        .frame(width: 309 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                                        .overlay(
                                            HStack {
                                                Button(action: {
                                                    gender = selectedgender
                                                    isPickerSexVisible = false
                                                }) {
                                                    Text(selectedgender)
                                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIphone()))
                                                        .kerning(-0.05 * 16 * sizeScreenIphone())
                                                        .foregroundColor(Color.BlueShadow)
                                                        .opacity(0.7)
                                                        .padding()
                                                    Spacer()
                                                }
                                            }
                                        )
                                
                            }
                        }
                    }
                    .frame(width: 320 * sizeScreenIphone(), height: 110 * sizeScreenIphone())
                    .offset(x:-20 * sizeScreenIphone(), y: -55 * sizeScreenIphone())
                }
            }
            .onTapGesture {
                isPickerSexVisible = false
                isPickerVisible = false
            }
      
        }
        
    }
}

struct SetUpProfile_Previews: PreviewProvider {
    static var previews: some View {
        SetUpProfile()
    }
}

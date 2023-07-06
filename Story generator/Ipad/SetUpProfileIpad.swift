//
//  SetUpProfileIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct SetUpProfileIpad: View {
    @State private var genderVoice = "Male"
    @State private var gender = "Male"
    @State private var sex = ["Male", "Female"]
    @State private var selectedAge = 5
    @State private var isPickerVisible = false
    @State private var isPickerSexVisible = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.BackgroundUser
                    .ignoresSafeArea()
                
                VStack(alignment: .leading){
                    NavigationLink(destination: EmptyView()){
                        Back()
                    }
                    .padding()
                    VStack(alignment: .leading, spacing: 30 * sizeScreenIpad()){
                        Text("Settings")
                            .frame(width: 192 * sizeScreenIpad(), height: 60 * sizeScreenIpad())
                            .font(.custom("Baloo-Regular", size:55 * sizeScreenIpad()))
                            .kerning(-0.05 * 55 * sizeScreenIpad())
                            .foregroundColor(Color.BlueShadow)
                        
                        
                        Text("How old is the child?")
                            .frame(width: 187 * sizeScreenIpad(), height: 26 * sizeScreenIpad())
                            .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                            .kerning(-0.05 * 22 * sizeScreenIpad())
                            .foregroundColor(Color.BlueShadow)
                        
                        RoundedRectangle(cornerRadius: 15 * sizeScreenIpad())
                            .foregroundColor(Color.white)
                            .frame(width: 663 * sizeScreenIpad(), height: 50 * sizeScreenIpad())
                            .overlay(
                                HStack{
                                    Text("\(selectedAge) years")
                                        .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIpad()))
                                        .kerning(-0.05 * 16 * sizeScreenIpad())
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
                        
                            .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                            .kerning(-0.05 * 18 * sizeScreenIpad())
                            .foregroundColor(Color.BlueShadow)
                        
                        RoundedRectangle(cornerRadius: 15 * sizeScreenIpad())
                            .foregroundColor(Color.white)
                            .frame(width: 663 * sizeScreenIpad(), height: 50 * sizeScreenIpad())
                            .overlay(
                                HStack{
                                    Text(gender)
                                        .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIpad()))
                                        .kerning(-0.05 * 16 * sizeScreenIpad())
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
                        Text("Wanna choose particular moral for the story?")
                        
                            .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                            .kerning(-0.05 * 22 * sizeScreenIpad())
                            .foregroundColor(Color.BlueShadow)
                        
                        HStack(spacing: 2 * sizeScreenIpad()){
                            MoralViewIpad(text: "Bravery", color: Color.Blue)
                            MoralViewIpad(text: "Kindness", color: Color.BlueMoral)
                            MoralViewIpad(text: "Honesty", color: Color.Pink)
                            MoralViewIpad(text: "Generosity", color: Color.Green)
                            
                            MoralViewIpad(text: "Search more", color: Color.white)
                            
                        }
                        
                        Text("The voice of the story:")
                        
                            .font(.custom("Poppins-Regular", size:18 * sizeScreenIpad()))
                            .kerning(-0.05 * 18 * sizeScreenIpad())
                            .foregroundColor(Color.BlueShadow)
                        
                        HStack{
                            if genderVoice == "Male"{
                                Button(action: {
                                    genderVoice = "Male"
                                }) {
                                    
                                    Circle()
                                        .frame(width: 21 * sizeScreenIpad(), height: 21 * sizeScreenIpad())
                                        .foregroundColor(Color.white)
                                        .overlay(
                                            Circle()
                                                .frame(width: 13 * sizeScreenIpad(), height: 13 * sizeScreenIpad())
                                            
                                                .foregroundColor(Color.TextBlue)
                                        )
                                    Text("Male")
                                        .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                                        .kerning(-0.05 * 18 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                    
                                }
                            }else{
                                Button(action: {
                                    genderVoice = "Male"
                                }) {
                                    Circle()
                                        .frame(width: 21 * sizeScreenIpad(), height: 21 * sizeScreenIpad())
                                        .foregroundColor(Color.white)
                                }
                                
                                Text("Male")
                                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                                    .kerning(-0.05 * 18 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                    .opacity(0.6)
                            }
                        }
                        HStack{
                            if genderVoice == "Female"{
                                Button(action: {
                                    genderVoice = "Female"
                                }) {
                                    Circle()
                                        .frame(width: 21 * sizeScreenIpad(), height: 21 * sizeScreenIpad())
                                        .foregroundColor(Color.white)
                                        .overlay(
                                            Circle()
                                                .frame(width: 13 * sizeScreenIpad(), height: 13 * sizeScreenIpad())
                                            
                                                .foregroundColor(Color.TextBlue)
                                        )
                                    Text("Female")
                                        .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                                        .kerning(-0.05 * 18 * sizeScreenIpad())
                                        .foregroundColor(Color.BlueShadow)
                                }
                            }else{
                                Button(action: {
                                    genderVoice = "Female"
                                }) {
                                    Circle()
                                        .frame(width: 21 * sizeScreenIpad(), height: 21 * sizeScreenIpad())
                                        .foregroundColor(Color.white)
                                }
                                
                                Text("Female")
                                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIpad()))
                                    .kerning(-0.05 * 18 * sizeScreenIpad())
                                    .foregroundColor(Color.BlueShadow)
                                    .opacity(0.6)
                            }
                        }
                        
                        
                        
                        
                        
                    }
                    .offset(x:40 * sizeScreenIpad(),y:0)
                    Spacer()
                    
                    
                }
                VStack{
                    Spacer()
                    Button(action: {
                        
                    }) {
                        ButtonViewIpad(color: Color.Green, colorText: Color.DarkGreen, colorShadow: Color.DarkGreen, text: "Save changes", clearButton: false)
                    }
                    
                    Button(action: {}) {
                        ButtonViewIpad(color: Color.clear, colorText: Color.DarkPink, colorShadow: Color.clear, text: "Cancel", clearButton: true)
                    }
                    .padding()
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
                            
                                
                                    RoundedRectangle(cornerRadius: 15 * sizeScreenIpad())
                                        .foregroundColor(Color.white)
                                        .frame(width: 663 * sizeScreenIpad(), height: 50 * sizeScreenIpad())
                                        .overlay(
                                            HStack {
                                                Button(action: {
                                                    selectedAge = age
                                                    isPickerVisible = false
                                                }) {
                                                    Text("\(age) years")
                                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIpad()))
                                                        .kerning(-0.05 * 16 * sizeScreenIpad())
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
                    .frame(width: 700 * sizeScreenIpad(), height: 310 * sizeScreenIpad())
                    .offset(x:-45 * sizeScreenIpad(), y: -150 * sizeScreenIpad())
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
                            
                                
                                    RoundedRectangle(cornerRadius: 15 * sizeScreenIpad())
                                        .foregroundColor(Color.white)
                                        .frame(width: 663 * sizeScreenIpad(), height: 50 * sizeScreenIpad())
                                        .overlay(
                                            HStack {
                                                Button(action: {
                                                    gender = selectedgender
                                                    isPickerSexVisible = false
                                                }) {
                                                    Text(selectedgender)
                                                        .font(.custom("Ubuntu-Regular", size: 16 * sizeScreenIpad()))
                                                        .kerning(-0.05 * 16 * sizeScreenIpad())
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
                    .frame(width: 700 * sizeScreenIpad(), height: 110 * sizeScreenIpad())
                    .offset(x:-45 * sizeScreenIpad(), y: -120 * sizeScreenIpad())
                }
            }
            .onTapGesture {
                isPickerSexVisible = false
                isPickerVisible = false
            }
            }
        }
    }


struct SetUpProfileIpad_Previews: PreviewProvider {
    static var previews: some View {
        SetUpProfileIpad()
    }
}

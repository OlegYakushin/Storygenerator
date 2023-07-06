//
//  ParentalControl2Ipad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct ParentalControl2Ipad: View {
    @State var firstNumber : String = "19"
    @State var secondNumber : String = "29"
    @State var answer : String = "81"
    var body: some View {
        NavigationStack{
            ZStack{
                Color.Background
                    .ignoresSafeArea()
                
                
                VStack{
                    NavigationLink(destination: EmptyView()){
                        Back()
                    }
                    .padding()
                    
                    
                    
                    Image("Lock")
                        .resizable()
                        .frame(width: 374 * sizeScreenIpad(), height: 238 * sizeScreenIpad())
                    
                    
                    Text("This area is for parents only!")
                        .font(.custom("Baloo", size:55 * sizeScreenIpad()))
                        .kerning(-0.05 * 55 * sizeScreenIpad())
                        .frame(width: 634 * sizeScreenIpad(), height: 60 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .multilineTextAlignment(.center)
                    Text("Please solve the following problem to continue:")
                        .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                        .kerning(-0.05 * 22 * sizeScreenIpad())
                        .frame(width: 256 * sizeScreenIpad(), height: 50 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }
                
                VStack{
                    HStack(spacing: 16 * sizeScreenIpad()){
                        Text(firstNumber)
                            .frame(width: 85 * sizeScreenIpad(), height: 78 * sizeScreenIpad())
                            .font(.custom("Poppins-Regular", size:22 * sizeScreenIpad()))
                            .foregroundColor(Color.TextDarkBlue)
                            .opacity(0.7)
                            .background(Color.white)
                            .multilineTextAlignment(.center)
                            .cornerRadius(15 * sizeScreenIpad())
                        
                        Text("+")
                            .font(.custom("Poppins-Regular", size:22 * sizeScreenIpad()))
                            .foregroundColor(Color.TextDarkBlue)
                        Text(secondNumber)
                            .font(.custom("Poppins-Regular", size:22 * sizeScreenIpad()))
                            .frame(width: 85 * sizeScreenIpad(), height: 78 * sizeScreenIpad())
                            .opacity(0.7)
                            .background(Color.white)
                        
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.TextDarkBlue)
                            .cornerRadius(15 * sizeScreenIpad())
                        
                        Text("=")
                            .font(.custom("Poppins-Regular", size:22 * sizeScreenIpad()))
                            .foregroundColor(Color.TextDarkBlue)
                        TextField("answer", text: $answer)
                            .font(.custom("Poppins-Regular", size:22 * sizeScreenIpad()))
                            .frame(width: 121 * sizeScreenIpad(), height: 78 * sizeScreenIpad())
                            .opacity(0.7)
                            .background(Color.white)
                        
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.TextDarkBlue)
                            .cornerRadius(15 * sizeScreenIpad())
                            .overlay(
                                RoundedRectangle(cornerRadius: 15 * sizeScreenIpad())
                                    .stroke(Color.pink, lineWidth: 2 * sizeScreenIpad())
                            )
                    }
                }
                
                
                VStack{
                    Spacer()
                    Button(action: {
                        
                    }) {
                        ButtonViewIpad(color: Color.clear, colorText: Color.DarkPink, colorShadow: Color.clear, text: "Try again", clearButton: true)
                    }
                }
                .padding()
                
            }
        }
    }
}

struct ParentalControl2Ipad_Previews: PreviewProvider {
    static var previews: some View {
        ParentalControl2Ipad()
    }
}


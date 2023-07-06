//
//  ParentalControlError.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/16/23.
//

import SwiftUI

struct ParentalControlError: View {
    @State var firstNumber : String = "19"
    @State var secondNumber : String = "29"
    @State var answer : String = "81"
    var body: some View {
        NavigationStack{
            ZStack{
                Color.Background
                    .ignoresSafeArea()
                
                RadialGradient(
                    gradient: Gradient(colors: [
                        Color(#colorLiteral(red: 0.8039215686, green: 0.8274509804, blue: 1, alpha: 1)),
                        Color.clear
                    ]),
                    center: .topTrailing,
                    startRadius: 0,
                    endRadius: UIScreen.main.bounds.width * 0.6
                )
                .ignoresSafeArea()
                RadialGradient(
                    gradient: Gradient(colors: [
                        Color(#colorLiteral(red: 0.8039215686, green: 0.8274509804, blue: 1, alpha: 1)),
                        Color.clear
                    ]),
                    center: UnitPoint(x: 0, y: 0.5),
                    startRadius: 0,
                    endRadius: UIScreen.main.bounds.height * 0.4
                )
                .ignoresSafeArea()
                VStack{
                    Button(action: {}) {
                        NavigationLink(destination: EmptyView()){
                            Back()
                            
                        }
                    }
                    .padding()
                    Spacer()
                }
                VStack{
                    Spacer().frame(height: 113 * sizeScreenIphone())
                    Image("Lock")
                        .resizable()
                        .frame(width:222 * sizeScreenIphone(), height: 148 * sizeScreenIphone())
                    Spacer()
                }
                .ignoresSafeArea()
                VStack{
                    Text("This area is for parents only!")
                        .font(.custom("Baloo", size:25 * sizeScreenIphone()))
                        .kerning(-0.05 * 25 * sizeScreenIphone())
                        .frame(width: 288 * sizeScreenIphone(), height: 39 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        .multilineTextAlignment(.center)
                    Text("Please solve the following problem to continue:")
                        .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIphone()))
                        .kerning(-0.05 * 16 * sizeScreenIphone())
                        .frame(width: 256 * sizeScreenIphone(), height: 36 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        .multilineTextAlignment(.center)
                    
                    
                    HStack(spacing: 16 * sizeScreenIphone()){
                        Text(firstNumber)
                            .frame(width: 48 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                            .foregroundColor(Color.TextDarkBlue)
                            .opacity(0.7)
                            .background(Color.white)
                            .multilineTextAlignment(.center)
                            .cornerRadius(5 * sizeScreenIphone())
                        
                        Text("+")
                            .foregroundColor(Color.TextDarkBlue)
                        Text(secondNumber)
                            .frame(width: 48 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                            .opacity(0.7)
                            .background(Color.white)
                        
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.TextDarkBlue)
                            .cornerRadius(5 * sizeScreenIphone())
                        
                        Text("=")
                            .foregroundColor(Color.TextDarkBlue)
                        TextField("answer", text: $answer)
                            .frame(width: 69 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                            .opacity(0.7)
                            .background(Color.white)
                        
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.TextDarkBlue)
                            .cornerRadius(5 * sizeScreenIphone())
                            .overlay(
                                RoundedRectangle(cornerRadius: 5 * sizeScreenIphone())
                                    .stroke(Color.pink, lineWidth: 2 * sizeScreenIphone())
                            )
                        
                    }
                    
                }
                VStack{
                    Spacer()
                    Button(action: {
                        
                    }) {
                        ButtonView(color: Color.clear, colorText: Color.DarkPink, colorShadow: Color.clear, text: "Try again", clearButton: true)
                    }
                    .padding()
                }
                
            }
            
        }
    }
}

struct ParentalControlError_Previews: PreviewProvider {
    static var previews: some View {
        ParentalControlError()
    }
}

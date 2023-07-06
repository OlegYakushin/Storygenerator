//
//  ParentalControl.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/15/23.
//

import SwiftUI

struct ParentalControl: View {
    @State var firstNumber : String = "19"
    @State var secondNumber : String = "29"
    @State var answer : String = ""
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
                    NavigationLink(destination: EmptyView()){
                        Back()
                    }
                    .padding()
                    Spacer()
                }
                VStack{
                    Spacer().frame(height: 113 * sizeScreenIphone())
                    Image("Lock")
                        .resizable()
                        .frame(width: 222 * sizeScreenIphone(), height: 148 * sizeScreenIphone())
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
                        .offset(x:0,y:-50 * sizeScreenIphone())
                    Text("Please solve the following problem to continue:")
                        .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIphone()))
                        .kerning(-0.05 * 16 * sizeScreenIphone())
                        .frame(width: 256 * sizeScreenIphone(), height: 36 * sizeScreenIphone())
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        .multilineTextAlignment(.center)
                        .offset(x:0,y:-50 * sizeScreenIphone())
                    
                    HStack(spacing: 16 * sizeScreenIphone()){
                        Text(firstNumber)
                            .frame(width: 48 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                            .foregroundColor(Color.TextDarkBlue)
                            .opacity(0.7)
                            .background(Color.white)
                            .multilineTextAlignment(.center)
                            .cornerRadius(5)
                        
                        Text("+")
                            .foregroundColor(Color.TextDarkBlue)
                        Text(secondNumber)
                            .frame(width: 48 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                            .opacity(0.7)
                            .background(Color.white)
                        
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.TextDarkBlue)
                            .cornerRadius(5)
                        
                        Text("=")
                            .foregroundColor(Color.TextDarkBlue)
                        TextField("answer", text: $answer)
                            .frame(width: 69 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                            .opacity(0.7)
                            .background(Color.white)
                        
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.TextDarkBlue)
                            .cornerRadius(5)
                    }
                    
                }
                VStack{
                    Spacer()
                    Button(action: {
                        
                    }) {
                        ButtonView(color: Color.Green, colorText: Color.DarkGreen, colorShadow: Color.DarkGreen, text: "Confirm & Continue", clearButton: false)
                    }
                    .padding()
                }
            }
        }
    }
}

struct ParentalControl_Previews: PreviewProvider {
    static var previews: some View {
        ParentalControl()
    }
}

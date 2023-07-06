//
//  ParentalControl2IpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct ParentalControl2IpadLand: View {
    @State var firstNumber : String = "19"
    @State var secondNumber : String = "29"
    @State var answer : String = "81"
    var body: some View {
        NavigationStack{
            ZStack{
                Color.Background
                    .ignoresSafeArea()
                
                
                VStack(alignment: .leading, spacing: 30 * sizeScreenIpad()){
                    NavigationLink(destination: EmptyView()){
                        Back()
                    }
                    
                    .padding()
                    
                    
                    
                    
                    
                    Text("This area is for parents only!")
                        .font(.custom("Baloo", size:55 * sizeScreenIpad()))
                        .kerning(-0.05 * 55 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .multilineTextAlignment(.center)
                    Text("Please solve the following problem to continue:")
                        .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                        .kerning(-0.05 * 22 * sizeScreenIpad())
                    
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }
                .offset(x:50 * sizeScreenIpad(),y:0)
                VStack(alignment: .leading){
                    HStack(alignment: .top){
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
                        Spacer()
                        Image("Lock")
                            .resizable()
                            .frame(width: 462 * sizeScreenIpad(), height: 300 * sizeScreenIpad())
                            .offset(x:-80 * sizeScreenIpad(),y:0)
                        
                    }
                    
                }
                .offset(x:50 * sizeScreenIpad(),y:100 * sizeScreenIpad())
                
                VStack{
                    Spacer()
                    HStack{
                        Button(action: {
                            
                        }) {
                            ButtonViewIpad(color: Color.clear, colorText: Color.DarkPink, colorShadow: Color.clear, text: "Try again", clearButton: true)
                        }
                        Spacer()
                        
                    }
                    .offset(x:30 * sizeScreenIpad(),y:0)
                    
                }
                
                .padding()
                
            }
        }
        
    }
}

struct ParentalControl2IpadLand_Previews: PreviewProvider {
    static var previews: some View {
        ParentalControl2IpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

//
//  Oops1.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/16/23.
//

import SwiftUI

struct Oops1: View {
    var body: some View {
      
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
           
                Image("Background")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 417/390, height: UIScreen.main.bounds.width * 477/390)
                    .offset(x: -UIScreen.main.bounds.width * 6/390, y: UIScreen.main.bounds.width * 201/390)
                
            }
            .ignoresSafeArea()
            
            VStack{
                TopMenuView()
                    .offset(x: UIScreen.main.bounds.width * 21/390, y: 0)
                Spacer()
            }
            
            VStack{
                Image("EmptySearch")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 300/390, height: UIScreen.main.bounds.width * 204/390)
                    
            }
            .offset(x: 0, y: -UIScreen.main.bounds.height * 190/844)
            
            
            VStack{
                
                Text("Oops...")
                    .font(.custom("Baloo-Regular", size:35))
                    .kerning(-0.05 * 35)
                    .foregroundColor(Color.BlueShadow)
                
              
                
            }
            .offset(x: 0, y: -UIScreen.main.bounds.height * 49/844)
            
            VStack{
                
                Text("Something went wrong while creating your story. Let’s try one more time!")
                    .font(.custom("Ubuntu-Regular", size:18))
                    .kerning(-0.05 * 18)
                    .frame(width: UIScreen.main.bounds.width * 301/390, height: UIScreen.main.bounds.width * 42/390)
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                    .multilineTextAlignment(.center)

                
            }
            
                VStack{
                    Spacer()
                    
                   

                    VStack{
                        Button(action: {}) {
                            Image("MicPressed")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width * 165/390, height: UIScreen.main.bounds.width * 164/390)
                        }
                        HStack{
                            Image("Coin")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width * 45/390, height: UIScreen.main.bounds.width * 45/390)
                            Text("Free")
                                .font(.custom("Helvetica-Bold", size:22))
                                .frame(width: UIScreen.main.bounds.width * 47/390, height: UIScreen.main.bounds.width * 48/390)
                                
                        }
                        .frame(width: UIScreen.main.bounds.width * 97/390, height: UIScreen.main.bounds.width * 48/390)
                        
                    }
                    .padding()
                               
                                   
                            
                            
                        
                    }
                 
            
    }
    }
}

struct Oops1_Previews: PreviewProvider {
    static var previews: some View {
        Oops1()
    }
}

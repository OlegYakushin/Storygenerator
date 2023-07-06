//
//  Oops1Ipad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct Oops1Ipad: View {
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
                endRadius: UIScreen.main.bounds.width * 0.5
            )
            .ignoresSafeArea()
            RadialGradient(
                gradient: Gradient(colors: [
                    Color(#colorLiteral(red: 0.8039215686, green: 0.8274509804, blue: 1, alpha: 1)),
                    Color.clear
                ]),
                center: .bottomLeading,
                startRadius: 0,
                endRadius: UIScreen.main.bounds.width * 0.5
            )
            .ignoresSafeArea()
            
           

          
            
            VStack{
                TopMenuIpadView()
                    .offset(x: UIScreen.main.bounds.width * 21/390, y: 0)
                Spacer()
            }
            
            VStack{
                Image("CatIpad")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 494/834, height: UIScreen.main.bounds.width * 401/834)
                    
            }
            .offset(x: 0, y: -UIScreen.main.bounds.height * 190/844)
            
            
            VStack{
                
                Text("Oops...")
                    .font(.custom("Baloo-Regular", size:55))
                    .kerning(-0.05 * 55)
                    .foregroundColor(Color.BlueShadow)
                    .frame(width: UIScreen.main.bounds.width * 362/834, height: UIScreen.main.bounds.width * 60/834)
                
              
                
            }
            .offset(x: 0, y: -UIScreen.main.bounds.height * 49/844)
            
            VStack{
                
                Text("Something went wrong while creating your story. Let’s try one more time!")
                    .font(.custom("Ubuntu-Regular", size:22))
                    .kerning(-0.05 * 22)
                    .frame(width: UIScreen.main.bounds.width * 558/834, height: UIScreen.main.bounds.width * 50/834)
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
                                .frame(width: UIScreen.main.bounds.width * 192.22/834, height: UIScreen.main.bounds.width * 191.05/834)
                        }
                        .padding()
                        HStack{
                            Image("Coin")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width * 45/834, height: UIScreen.main.bounds.width * 45/834)
                            Text("Free")
                                .font(.custom("Helvetica-Bold", size:22))
                                .frame(width: UIScreen.main.bounds.width * 47/834, height: UIScreen.main.bounds.width * 48/834)
                                
                        }
                        .frame(width: UIScreen.main.bounds.width * 97/834, height: UIScreen.main.bounds.width * 48/834)
                        
                    }
                    .padding()
                               
                                   
                            
                            
                        
                    }
                 
            
    }
    }
}

struct Oops1Ipad_Previews: PreviewProvider {
    static var previews: some View {
        Oops1Ipad()
    }
}

//
//  Oops1IpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct Oops1IpadLand: View {
    var body: some View {
      
        ZStack{
            Color.Background
                .ignoresSafeArea()
            

          
            
            VStack{
                TopMenuIpadLandscapeView()
                    .offset(x: UIScreen.main.bounds.width * 24/1194, y: 0)
                Spacer()
            }
            HStack{
            VStack(alignment: .leading, spacing: 40){
                Text("Oops...")
                    .font(.custom("Baloo-Regular", size:55))
                    .kerning(-0.05 * 55)
                    .foregroundColor(Color.BlueShadow)
                    
                Text("Something went wrong while creating your story. Let’s try one more time!")
                    .font(.custom("Ubuntu-Regular", size:22))
                    .kerning(-0.05 * 22)
                    
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                    .multilineTextAlignment(.center)

                Image("CatIpad")
                    .resizable()
                    .frame(width: 494, height: 401)
                    
            }
            .offset(x: 50, y: 20)
                
            
            
            
        
            Spacer()
           
            
                VStack{
               
                    
                    
                    
                    VStack{
                        Button(action: {}) {
                            Image("MicPressed")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width * 192.22/1194, height: UIScreen.main.bounds.width * 191.05/1194)
                        }
                        .padding()
                        HStack{
                            Image("Coin")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width * 45/1194, height: UIScreen.main.bounds.width * 45/1194)
                            Text("Free")
                                .font(.custom("Helvetica-Bold", size:22))
                                .frame(width: UIScreen.main.bounds.width * 47/1194, height: UIScreen.main.bounds.width * 48/1194)
                            
                        }
                        .frame(width: UIScreen.main.bounds.width * 97/1194, height: UIScreen.main.bounds.width * 48/1194)
                        
                    }
                    
                    
                    
                    
                }
                .offset(x: -100, y: 50)
                            
                        
                    }
                 
            
    }
    }
}

struct Oops1IpadLand_Previews: PreviewProvider {
    static var previews: some View {
        Oops1IpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

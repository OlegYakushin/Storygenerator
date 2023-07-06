//
//  MainScreenIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct MainScreenIpadLand: View {
    var body: some View {
       
        ZStack{
            Color.Background
                .ignoresSafeArea()

            VStack{
                Spacer()
                Image("BackgroundIpadLand")
                    .resizable()
                    .scaledToFit()
                
            }
            .ignoresSafeArea()
            
            VStack{
                TopMenuIpadLandscapeView()
                    
                    .offset(x: 24 * sizeScreenIpad(), y: 0)
                
                Spacer()
            }
            VStack{
                
                Text("Create your first story!")
                    .font(.custom("Baloo-Regular", size:55 * sizeScreenIpad()))
                    .kerning(-0.05 * 55 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                
                Text("What is your story about?")
                    .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                    .kerning(-0.05 * 22 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                
            }
            .offset(x: 0, y: -250 * sizeScreenIpad())
            
                VStack{
                    Button(action: {}) {
                        Image("Mic")
                            .resizable()
                            .frame(width: 190 * sizeScreenIpad(), height:188.85 * sizeScreenIpad())
                    }
                    
                HStack{
                    Image("Coin")
                        .resizable()
                        .frame(width:25 * sizeScreenIpad(), height:25 * sizeScreenIpad())
                    Text("9")
                        .font(.custom("Helvetica", size:35))
                        .foregroundColor(Color.BlueShadow)
                        .opacity(0.7)
                        .bold()
                }
                    
                
               
                   
            }
                .offset(x: 0, y:45 * sizeScreenIpad())
            
            VStack{
                Spacer()
                Button(action: {}) {
                    ButtonWithCoinIpad(color: Color.Pink, colorShadow: Color.DarkPink, text: "I wanna random story", numberOfCoins: "5")
                }
                    
            }
            .offset(x: 0, y:-45 * sizeScreenIpad())
           
            
            
        }
            
    }
    

}

struct MainScreenIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenIpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

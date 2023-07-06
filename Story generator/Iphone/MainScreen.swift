//
//  MainScreen.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/14/23.
//

import SwiftUI

struct MainScreen: View {
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
                center: UnitPoint(x: -0.3, y: 0.5),
                startRadius: 0,
                endRadius: UIScreen.main.bounds.height * 0.4
            )
            .ignoresSafeArea()
            
           

            VStack{
                Spacer()
                Image("Background")
                    .resizable()
                    .scaledToFit()
                
            }
            .ignoresSafeArea()
            
            VStack{
                TopMenuView()
                    
                    .offset(x: 21 * sizeScreenIphone(), y: 0)
                Spacer()
            
            }
            VStack{
                
                Text("Create your first story!")
                    .font(.custom("Baloo-Regular", size:35))
                    .kerning(-0.05 * 35)
                    .foregroundColor(Color.BlueShadow)
                
                Text("What is your story about?")
                    .font(.custom("Ubuntu-Regular", size:18))
                    .kerning(-0.05 * 18)
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                
            }
            .offset(x: 0, y: -200 * sizeScreenIphone())
            
                VStack{
                    Button(action: {}) {
                        Image("Mic")
                            .resizable()
                            .frame(width:165 * sizeScreenIphone(), height:164 * sizeScreenIphone())
                    }
                    
                HStack{
                    Image("Coin")
                        .resizable()
                        .frame(width:25 * sizeScreenIphone(), height:25 * sizeScreenIphone())
                    Text("9")
                        .font(Font.custom("Helvetica", size: 22))
                        .bold()
                        .foregroundColor(Color.BlueShadow)
                }
                    
                
               
                   
            }
                .offset(x: 0, y:170 * sizeScreenIphone())
            
            VStack{
                Spacer()
                Button(action: {}) {
                    ButtonWithCoin(color: Color.Pink, colorShadow: Color.DarkPink, text: "I wanna random story", numberOfCoins: "5")
                }
                    
            }
           
            
            
        }
            
    }
    

}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

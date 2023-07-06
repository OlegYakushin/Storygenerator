//
//  MainScreenLandscape.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct MainScreenLandscape: View {
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
                Spacer()
                Image("BackgroundLand")
                    .resizable()
                    .frame(width:844 * sizeScreenIphone(), height:330 * sizeScreenIphone())
                
            }
            .ignoresSafeArea()
            
            VStack{
                TopMenuLandscapeView()
                    .offset(x:21 * sizeScreenIphone(), y: 0)
                Spacer()}
            .padding()
            VStack{
              
                Text("Create your first story!")
                    .font(.custom("Baloo-Regular", size:35 * sizeScreenIphone()))
                    .kerning(-0.05 * 35 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                
                Text("What is your story about?")
                    .font(.custom("Ubuntu-Regular", size:18 * sizeScreenIphone()))
                    .kerning(-0.05 * 18 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
              
                Spacer()
            }
            .padding(.top, 20 * sizeScreenIphone())
            
            
                VStack{
                    Button(action: {}) {
                        Image("Mic")
                            .resizable()
                            .frame(width:124 * sizeScreenIphone(), height:120.8 * sizeScreenIphone())
                    }
                    
                HStack{
                    Image("Coin")
                        .resizable()
                        .frame(width:33.82 * sizeScreenIphone(), height:33.15 * sizeScreenIphone())
                    Text("9")
                        .font(Font.custom("Helvetica", size: 22 * sizeScreenIphone()))
                        .bold()
                        .foregroundColor(Color.BlueShadow)
                }
                    
                
               
                   
            }
                .padding(.top, 20 * sizeScreenIphone())
                
            
            VStack{
                Spacer()
                Button(action: {}) {
                    ButtonWithCoin(color: Color.Pink, colorShadow: Color.DarkPink, text: "I wanna random story", numberOfCoins: "5")
                }
                    
            }
           
            
            
        }
            
    }
    

}

struct MainScreenLandscape_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenLandscape()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}

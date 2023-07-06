//
//  OopsLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct OopsLand: View {
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
                    center: .topLeading,
                    startRadius: 0,
                    endRadius: UIScreen.main.bounds.width * 0.6
                )
                .ignoresSafeArea()
                
                VStack{
                    NavigationLink(destination: EmptyView()){
                        Back()
                    }
                    .offset(x: 0, y: 30 * sizeScreenIphone())
                    Spacer()
                    
                }
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("Oops")
                            .font(.custom("Baloo", size:30 * sizeScreenIphone()))
                            .kerning(-0.05 * 30 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                            .frame(width: 67 * sizeScreenIphone(), height: 47 * sizeScreenIphone())
                        
                        Text("Seems there’s not enough stars on your balance")
                            .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIphone()))
                            .kerning(-0.05 * 16 * sizeScreenIphone())
                            .frame(width: 240 * sizeScreenIphone(), height: 60 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                            .opacity(0.7)
                        
                        
                        Button(action: {}) {
                            ButtonWithCoin(color: Color.Blue, colorShadow: Color.BlueShadow, text: "Purchase Stars", numberOfCoins: "")
                        }
                        
                        
                    }
                    
                    VStack{
                        Image("EmptyChest")
                            .resizable()
                            .frame(width: 180 * sizeScreenIphone(), height: 147 * sizeScreenIphone())
                        
                    }
                    .offset(x: 120 * sizeScreenIphone(), y: 0)
                    
                }
                .offset(x: -100 * sizeScreenIphone(), y: 30 * sizeScreenIphone())
            }
        }
    }
}
struct OopsLand_Previews: PreviewProvider {
    static var previews: some View {
        OopsLand()
        .previewInterfaceOrientation(.landscapeLeft)
    }
}

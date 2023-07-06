//
//  Oops.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/15/23.
//

import SwiftUI

struct Oops: View {
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
                TopMenuView()
                    .offset(x: 21 * sizeScreenIphone(), y: 0)
                Spacer()
               
            }
            VStack{
                Spacer()
                Text("Oops...")
                    .font(.custom("Baloo", size:30 * sizeScreenIphone()))
                    .kerning(-0.05 * 30 * sizeScreenIphone())
                    .frame(width: 84 * sizeScreenIphone(), height: 47 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .multilineTextAlignment(.center)
                Text("Seems there’s not enough stars on your balance")
                    .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIphone()))
                    .kerning(-0.05 * 16 * sizeScreenIphone())
                    .frame(width: 256 * sizeScreenIphone(), height: 36 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                    .multilineTextAlignment(.center)
                
                Spacer()
                Spacer()
                Spacer()
            }
            VStack{
                Image("EmptyChest")
                    .resizable()
                    .frame(width: 180 * sizeScreenIphone(), height: 147 * sizeScreenIphone())
                    .offset(x: 18 * sizeScreenIphone(), y: 0)
            }
            VStack{
                Spacer()
                Button(action: {}) {
                    ButtonWithCoin(color: Color.Blue, colorShadow: Color.BlueShadow, text: "Purchase Stars", numberOfCoins: "")
                }
            }
        }
    }
}

struct Oops_Previews: PreviewProvider {
    static var previews: some View {
        Oops()
    }
}

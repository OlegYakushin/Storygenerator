//
//  OppsIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct OppsIpad: View {
    var body: some View {
        ZStack{
            Color.Background
                .ignoresSafeArea()
            VStack{
                TopMenuIpadView()
                    .offset(x: 34 * sizeScreenIpad(), y: 0)
                Spacer()
               
            }
            VStack{
                Spacer()
                Text("Oops...")
                    .font(.custom("Baloo", size:55 * sizeScreenIpad()))
                    .kerning(-0.05 * 55 * sizeScreenIpad())
                    .frame(width: 154 * sizeScreenIpad(), height: 60 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Seems there’s not enough stars on your balance")
                    .font(.custom("Ubuntu-Regular", size:22 * sizeScreenIpad()))
                    .kerning(-0.05 * 22 * sizeScreenIpad())
                    .frame(width: 308 * sizeScreenIpad(), height: 50 * sizeScreenIpad())
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
                    .frame(width: 270 * sizeScreenIpad(), height: 221.05 * sizeScreenIpad())
                    .offset(x: 18 * sizeScreenIpad(), y: 0)
            }
            VStack{
                Spacer()
                Button(action: {}) {
                    ButtonWithCoinIpad(color: Color.Blue, colorShadow: Color.BlueShadow, text: "Purchase Stars", numberOfCoins: "")
                }
                .padding()
            }
        }
    }
}

struct OppsIpad_Previews: PreviewProvider {
    static var previews: some View {
        OppsIpad()
    }
}

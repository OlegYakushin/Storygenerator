//
//  PurchaseCredits.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/14/23.
//

import SwiftUI

struct PurchaseCredits: View {
    @State private var select = "15 Stars"
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
                center: UnitPoint(x: 0, y: 0.72),
                startRadius: 0,
                endRadius: UIScreen.main.bounds.height * 0.4
            )
            .ignoresSafeArea()
            VStack(alignment: .leading){
                Button(action: {}) {
                    Back()
                }
                .padding(.leading, 10 * sizeScreenIphone())
                
                
                
                Text("Purchase stars")
                    .font(.custom("Baloo-Regular", size:30 * sizeScreenIphone()))
                    .kerning(-0.05 * 30 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .frame(width: 184 * sizeScreenIphone(), height: 47 * sizeScreenIphone())
                    .padding(.leading, 25 * sizeScreenIphone())
                Spacer()
            }
            VStack{
                    
                Button(action: {
                    select = "5 Stars"
                }) {
                    if select == "5 Stars"{
                        StarsView(colorCard: Color.CardBlue, text: "5 Stars")
                    }else{
                        StarsView(colorCard: Color.clear, text: "5 Stars")
                    }
                }
                Button(action: {
                    select = "15 Stars"
                }) {
                    if select == "15 Stars"{
                        StarsView(colorCard: Color.CardBlue, text: "15 Stars")
                    }else{
                        StarsView(colorCard: Color.clear, text: "15 Stars")
                    }
                }
                Button(action: {
                    select = "30 Stars"
                }) {
                    if select == "30 Stars"{
                        StarsView(colorCard: Color.CardBlue, text: "30 Stars")
                    }else{
                        StarsView(colorCard: Color.clear, text: "30 Stars")
                    }
                }
              
            }
            VStack{
                Spacer()
                Button(action: {}) {
                    ButtonWithCoin(color: Color.Blue, colorShadow: Color.BlueShadow, text: "Purchase Stars", numberOfCoins: "")
                }
                    .padding()
            }
            
        }
    
    }
}

struct PurchaseCredits_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseCredits()
    }
}

//
//  PurchaseCreditsIpadLand.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct PurchaseCreditsIpadLand: View {
    @State private var select = "15 Stars"
    var body: some View {
        NavigationStack{
            ZStack{
                Color.Background
                    .ignoresSafeArea()
                
                
                VStack(alignment: .leading){
                    NavigationLink(destination: EmptyView()){
                        Back()
                    }
                    .offset(x:30 * sizeScreenIpad(),y:0)
                    .padding()
                    
                    
                    
                    Text("Purchase stars")
                        .font(.custom("Baloo-Regular", size:55 * sizeScreenIpad()))
                        .kerning(-0.05 * 55 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .offset(x:70 * sizeScreenIpad(),y:0)
                    
                    Spacer()
                }
                
                
                HStack{
                    Button(action: {
                        select = "5 Stars"
                    }) {
                        if select == "5 Stars"{
                            StarsViewIpadLand(colorCard: Color.CardBlue, text: "5 Stars")
                        }else{
                            StarsViewIpadLand(colorCard: Color.clear, text: "5 Stars")
                        }
                        
                    }
                    Button(action: {
                        select = "15 Stars"
                    }) {
                        if select == "15 Stars"{
                            StarsViewIpadLand(colorCard: Color.CardBlue, text: "15 Stars")
                        }else{
                            StarsViewIpadLand(colorCard: Color.clear, text: "15 Stars")
                        }
                    }
                    Button(action: {
                        select = "30 Stars"
                    }) {
                        if select == "30 Stars"{
                            StarsViewIpadLand(colorCard: Color.CardBlue, text: "30 Stars")
                        }else{
                            StarsViewIpadLand(colorCard: Color.clear, text: "30 Stars")
                        }
                        
                        
                    }
                }
                
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Button(action: {}) {
                            ButtonWithCoinIpad(color: Color.Blue, colorShadow: Color.BlueShadow, text: "Purchase Stars", numberOfCoins: "")
                        }
                        
                    }
                }
                .padding()
            }
            
        }
    }
}

struct PurchaseCreditsIpadLand_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseCreditsIpadLand()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


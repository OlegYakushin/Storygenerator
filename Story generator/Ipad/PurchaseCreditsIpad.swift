//
//  PurchaseCreditsIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/21/23.
//

import SwiftUI

struct PurchaseCreditsIpad: View {
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
                    .padding()
                    
                    
                    
                    
                    Text("Purchase stars")
                        .font(.custom("Baloo-Regular", size:55 * sizeScreenIpad()))
                        .kerning(-0.05 * 55 * sizeScreenIpad())
                        .foregroundColor(Color.BlueShadow)
                        .offset(x:30 * sizeScreenIpad(),y:0)
                    
                    
                    Spacer()
                }
                VStack{
                    Button(action: {
                        select = "5 Stars"
                    }) {
                        if select == "5 Stars"{
                            StarsViewIpad(colorCard: Color.CardBlue, text: "5 Stars")
                        }else{
                            StarsViewIpad(colorCard: Color.clear, text: "5 Stars")
                        }
                        
                    }
                    Button(action: {
                        select = "15 Stars"
                    }) {
                        if select == "15 Stars"{
                            StarsViewIpad(colorCard: Color.CardBlue, text: "15 Stars")
                        }else{
                            StarsViewIpad(colorCard: Color.clear, text: "15 Stars")
                        }
                    }
                    Button(action: {
                        select = "30 Stars"
                    }) {
                        if select == "30 Stars"{
                            StarsViewIpad(colorCard: Color.CardBlue, text: "30 Stars")
                        }else{
                            StarsViewIpad(colorCard: Color.clear, text: "30 Stars")
                        }
                        
                        
                    }
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
}

struct PurchaseCreditsIpad_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseCreditsIpad()
    }
}

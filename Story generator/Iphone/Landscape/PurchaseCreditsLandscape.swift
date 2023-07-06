//
//  PurchaseCreditsLandscape.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct PurchaseCreditsLandscape: View {
    @State private var select = "15 Stars"
    var body: some View {
        NavigationStack{
          
                ZStack{
                    Color.Background
                        .ignoresSafeArea()
                    
                    
                    VStack{
                        NavigationLink(destination: EmptyView()){
                            Back()
                        }
                        .offset(x: 0, y: 30 * sizeScreenIphone())
                        
                        Spacer()
                        
                    }
                    VStack(alignment: .leading){
                        
                        
                        Text("Purchase stars")
                            .font(.custom("Baloo-Regular", size:30 * sizeScreenIphone()))
                            .kerning(-0.05 * 30 * sizeScreenIphone())
                            .foregroundColor(Color.BlueShadow)
                            .frame(width: 184 * sizeScreenIphone(), height: 47 * sizeScreenIphone())
                            .offset(x: 10 * sizeScreenIphone(), y: 0)
                        
                        
                        HStack{
                            Button(action: {
                                select = "5 Stars"
                            }) {
                                if select == "5 Stars"{
                                    StarsViewLandscape(colorCard: Color.CardBlue, text: "5 Stars")
                                }else{
                                    StarsViewLandscape(colorCard: Color.clear, text: "5 Stars")
                                }
                                
                            }
                            Button(action: {
                                select = "15 Stars"
                            }) {
                                if select == "15 Stars"{
                                    StarsViewLandscape(colorCard: Color.CardBlue, text: "15 Stars")
                                }else{
                                    StarsViewLandscape(colorCard: Color.clear, text: "15 Stars")
                                }
                            }
                            Button(action: {
                                select = "30 Stars"
                            }) {
                                if select == "30 Stars"{
                                    StarsViewLandscape(colorCard: Color.CardBlue, text: "30 Stars")
                                }else{
                                    StarsViewLandscape(colorCard: Color.clear, text: "30 Stars")
                                }
                                
                                
                            }
                        }
                        .offset(x: 0, y: 40 * sizeScreenIphone())
                        
                        HStack{
                            Spacer()
                            Button(action: {}) {
                                ButtonWithCoin(color: Color.Blue, colorShadow: Color.BlueShadow, text: "Purchase Stars", numberOfCoins: "")
                                
                            }
                            
                            
                        }
                        .offset(x: -50 * sizeScreenIphone(), y: 50 * sizeScreenIphone())
                        
                        
                        
                        
                        
                        
                    }
                }
                
                
            
            
        
    }
    }
}

struct PurchaseCreditsLandscape_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseCreditsLandscape()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

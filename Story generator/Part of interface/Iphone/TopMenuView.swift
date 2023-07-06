//
//  TopMenuView.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/11/23.
//

import SwiftUI

struct TopMenuView: View {
    var body: some View {
        
            HStack{
                Button(action: {}) {
                    Image("Account")
                        .resizable()
                        .frame(width:55 * sizeScreenIphone(), height: 55 * sizeScreenIphone())
                }
                Spacer()
                Button(action: {}) {
                    Image("Book")
                        .resizable()
                        .frame(width:45 * sizeScreenIphone(), height: 45 * sizeScreenIphone())
                }
                RoundedRectangle(cornerRadius: 20)
                    .frame(width:124 * sizeScreenIphone(), height: 48 * sizeScreenIphone())
                    .foregroundColor(Color.Blue)
                
                    .overlay(
                        
                        HStack(spacing: 5){
                            Button(action: {}) {
                                Image("Coin")
                                    .resizable()
                                    .frame(width: 35 * sizeScreenIphone(), height:35 * sizeScreenIphone())
                                
                            }
                            .padding(.leading, 10 * sizeScreenIphone())
                           
                            VStack(alignment: .leading, spacing: -10) {
                                Text("9")
                                    .font(.custom("Baloo-Regular", size: 25))
                                    .foregroundColor(Color.white)
                                    .kerning(-0.05 * 25)
                                
                                Text("stars")
                                    .font(.custom("Poppins-Regular", size: 11))
                                    .foregroundColor(Color.white)
                                    .kerning(-0.05 * 11)
                                
                            }
                            
                            Spacer()
                            
                            
                        }
                            
                    )
            }
            .frame(width:391 * sizeScreenIphone(), height: 55 * sizeScreenIphone())
        }
    
}

struct TopMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TopMenuView()
    }
}

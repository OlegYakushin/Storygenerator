//
//  TopMenuIpadView.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/11/23.
//

import SwiftUI

struct TopMenuIpadView: View {
    var body: some View {
        HStack{
            Button(action: {}) {
                
                Image("Account")
                    .resizable()
                    .frame(width: 85 * sizeScreenIpad(), height: 85 * sizeScreenIpad())
            }
            Spacer()
            Button(action: {}) {
                Image("Book")
                    .resizable()
                    .frame(width: 70 * sizeScreenIpad(), height: 70 * sizeScreenIpad())
                    .padding(20 * sizeScreenIpad())
            }
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 178 * sizeScreenIpad(), height: 75 * sizeScreenIpad())
                .foregroundColor(Color.Blue)
            
                .overlay(
                    
                    HStack(spacing: 5 * sizeScreenIpad()){
                        Button(action: {}) {
                            Image("Coin")
                                .resizable()
                                .frame(width: 56 * sizeScreenIpad(), height: 56 * sizeScreenIpad())
                        }
                        VStack(alignment: .leading, spacing: -10 * sizeScreenIpad()) {
                            Text("9")
                                .font(.custom("Baloo-Regular", size: 35 * sizeScreenIpad()))
                                .foregroundColor(Color.white)
                                .kerning(-0.05 * 35 * sizeScreenIpad())
                            Text("stars")
                                .font(.custom("Poppins-Regular", size: 14 * sizeScreenIpad()))
                                .foregroundColor(Color.white)
                                .kerning(-0.05 * 14 * sizeScreenIpad())
                            
                        }
                        
                        Spacer()
                        
                    
                    }
                        .padding(.leading, 12 * sizeScreenIpad())
                )
        }
        .frame(width: 835 * sizeScreenIpad(), height: 92 * sizeScreenIpad())
        
    }
}

struct TopMenuIpadView_Previews: PreviewProvider {
    static var previews: some View {
        TopMenuIpadView()
    }
}

//
//  Back.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/15/23.
//
import SwiftUI

struct Back: View {
  
    
    var body: some View {
        
        
            ZStack {
                HStack{
                    Image(systemName: "chevron.left")
                        .imageScale(.small)
                        .opacity(0.7)
                        .foregroundColor(Color.BlueShadow)
                        .font(.system(size: 18))
                    
                    Text("Back")
                        .font(.custom("Ubuntu-Regular", size:18))
                        .foregroundColor(Color.BlueShadow)
                        .kerning(-0.05 * 18)
                        .opacity(0.7)
                }
            }
        
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct Back_Previews: PreviewProvider {
    static var previews: some View {
        Back()
    }
}


//
//  MoralViewIpad.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/20/23.
//

import SwiftUI

struct MoralViewIpad: View {
    @State private var textWidth: CGFloat = 0.0
    @State var text: String
    @State var color: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 30 * sizeScreenIpad())
            .foregroundColor(color)
            .frame(width: textWidth + 45 * sizeScreenIpad(), height: 44 * sizeScreenIpad())
            .overlay(
                HStack{
                    Image(text)
                        .resizable()
                        .frame(width: 20 * sizeScreenIpad(), height: 20 * sizeScreenIpad())
                Text(text)
                    .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIpad()))
                    .kerning(-0.05 * 16 * sizeScreenIpad())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                    .onAppear {
                        textWidth = measureTextWidth(text: text, font: UIFont(name: "Ubuntu-Regular", size: 16 * sizeScreenIpad())!)
                    
                    }
                    }
            )
    }
    
    func measureTextWidth(text: String, font: UIFont) -> CGFloat {
        let attributes = [NSAttributedString.Key.font: font]
        let size = (text as NSString).size(withAttributes: attributes)
        return size.width
    }
}
struct MoralViewIpad_Previews: PreviewProvider {
    static var previews: some View {
        MoralViewIpad(text: "Bravery", color: Color.Blue)
    }
}

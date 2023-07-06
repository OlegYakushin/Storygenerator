//
//  MoralView.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/19/23.
//

import SwiftUI

struct MoralView: View {
    @State private var textWidth: CGFloat = 0.0
    @State var text: String
    @State var color: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 30 * sizeScreenIphone())
            .foregroundColor(color)
            .frame(width: textWidth + 60, height: 48 * sizeScreenIphone())
            .overlay(
                HStack{
                    Image(text)
                        .resizable()
                        .frame(width: 20 * sizeScreenIphone(), height: 20 * sizeScreenIphone())
                Text(text)
                    .font(.custom("Ubuntu-Regular", size:16 * sizeScreenIphone()))
                    .kerning(-0.05 * 16 * sizeScreenIphone())
                    .foregroundColor(Color.BlueShadow)
                    .opacity(0.7)
                    .onAppear {
                        textWidth = measureTextWidth(text: text, font: UIFont(name: "Ubuntu-Regular", size: 16 * sizeScreenIphone())!)
                    
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
struct MoralView_Previews: PreviewProvider {
    static var previews: some View {
        MoralView(text: "Bravery", color: Color.Blue)
    }
}

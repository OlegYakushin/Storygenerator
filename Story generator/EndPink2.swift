//
//  EndPink2.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct EndPink2: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    init(){
        for familyName in  UIFont.familyNames {
            print(familyName)
            for fontName in UIFont.fontNames(forFamilyName: familyName)
            {
                print("==\(fontName)")
            }
        }
    }
    var body: some View {
        Group {
            if horizontalSizeClass == .compact && verticalSizeClass == .regular {
                TheEnd2()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                TheEndPinkLand()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                TheEndPink2Ipad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                TheEndPinkIpad2Land()
            } else {
                EmptyView()
            }
        }
    }
}


struct EndPink2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EndPink2()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            EndPink2()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            EndPink2()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            EndPink2()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

//
//  EndPink.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct EndPink: View {
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
                TheEnd1()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                TheEndPinkLand()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                TheEndPinkIpad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                TheEndPinkIpadLand()
            } else {
                EmptyView()
            }
        }
    }
}


struct EndPink_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EndPink()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            EndPink()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            EndPink()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            EndPink()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

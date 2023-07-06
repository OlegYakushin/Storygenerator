//
//  Trophy.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct Trophy: View {
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
                Trophies()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                TrophiesLand()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                TrophiesIpad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                TrophiesIpadLand()
            } else {
                EmptyView()
            }
        }
    }
}


struct Trophy_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Trophy()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            Trophy()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            Trophy()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            Trophy()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

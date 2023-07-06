//
//  Purchase.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct Purchase: View {
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
                PurchaseCredits()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                PurchaseCreditsLandscape()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                PurchaseCreditsIpad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                PurchaseCreditsIpadLand()
            } else {
                EmptyView()
            }
        }
    }
}


struct Purchase_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Purchase()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            Purchase()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            Purchase()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            Purchase()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

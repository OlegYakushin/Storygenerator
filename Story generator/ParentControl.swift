//
//  ParentControl.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct ParentControl: View {
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
            ParentalControl()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                ParentalControlLand()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                ParentalControlIpad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                ParentalControlIpadLand()
            } else {
                EmptyView()
            }
        }
    }
}


struct ParentControl_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ParentControl()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            ParentControl()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            ParentControl()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            ParentControl()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

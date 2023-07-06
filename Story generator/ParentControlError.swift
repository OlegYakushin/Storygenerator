//
//  ParentControlError.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct ParentControlError: View {
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
            ParentalControlError()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                ParentalControlErrorLand()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                ParentalControl2Ipad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                ParentalControl2IpadLand()
            } else {
                EmptyView()
            }
        }
    }
}


struct ParentControlError_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ParentControlError()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            ParentControlError()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            ParentControlError()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            ParentControlError()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

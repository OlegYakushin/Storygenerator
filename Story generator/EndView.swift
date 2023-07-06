//
//  EndView.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/11/23.
//

import SwiftUI

struct EndView: View {
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
                TheEndView()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                TheEndLandscapeView()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                TheEndIpadView()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                TheEndIpadLandscapeView()
            } else {
                EmptyView()
            }
        }
    }
}


struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EndView()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            EndView()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            EndView()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            EndView()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

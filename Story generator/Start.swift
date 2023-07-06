//
//  Start.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct Start: View {
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
               StartIphone()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                StartLand()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                StartIpad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                StartIpadLand()
            } else {
                EmptyView()
            }
        }
    }
}


struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Start()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            Start()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            Start()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            Start()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

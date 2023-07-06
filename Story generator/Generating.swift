//
//  Generating.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct Generating: View {
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
               GeneratingTheStory()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                GeneratingTheStoryLand()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                GeneratingTheStoryIpad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                GeneratingTheStoryLand()
            } else {
                EmptyView()
            }
        }
    }
}


struct Generating_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Generating()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            Generating()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            Generating()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            Generating()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

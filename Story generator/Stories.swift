//
//  Stories.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct Stories: View {
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
               StoriesLibrary()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                StoryLibraryLand()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                StoriesLibrary()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                StoryLibraryIpadLand()
            } else {
                EmptyView()
            }
        }
    }
}


struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Stories()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            Stories()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            Stories()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            Stories()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

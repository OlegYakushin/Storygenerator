//
//  TheEndPink2.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct TheEndPink2: View {
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
                ListenAnswerIphone()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                ListenAnswerland()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                ListenAnswerIpad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                ListenAnswerIpadLand()
            } else {
                EmptyView()
            }
        }
    }
}


    struct TheEndPink2_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                TheEndPink2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                TheEndPink2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                TheEndPink2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)

                TheEndPink2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

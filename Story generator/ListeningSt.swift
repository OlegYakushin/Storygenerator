//
//  ListeningSt.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct ListeningSt: View {
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
                Listening()
            } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                ListeningLand()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                ListeningIpad()
            } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
               ListeningIpadLand()
            } else {
                EmptyView()
            }
        }
    }
}


struct ListeningSt_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListeningSt()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .regular)

            ListeningSt()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .compact)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)

            ListeningSt()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .regular)

            ListeningSt()
                .previewLayout(.device)
                .environment(\.horizontalSizeClass, .regular)
                .environment(\.verticalSizeClass, .compact)
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

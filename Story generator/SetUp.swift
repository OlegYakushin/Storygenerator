//
//  SetUp.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct SetUp: View {
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
                    SetUpProfile()
                } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                    SetUpProfileLand()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                  SetUpProfileIpad()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                   SetUpProfileIpadLand()
                } else {
                    EmptyView()
                }
            }
        }
    }


    struct SetUp_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                SetUp()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                SetUp()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                SetUp()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)

                SetUp()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

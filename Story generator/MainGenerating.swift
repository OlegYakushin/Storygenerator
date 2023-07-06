//
//  MainGenerating.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct MainGenerating: View {
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
                    MainScreen_generating_the_story_()
                } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                  MainScreen_generating_the_story_Land()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                    MainScreenIpadGenerating()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                    MainScreenIpadGeneratingLand()
                } else {
                    EmptyView()
                }
            }
        }
    }


    struct MainGenerating_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                MainGenerating()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                MainGenerating()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                MainGenerating()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)

                MainGenerating()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

//
//  Main.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/22/23.
//

import SwiftUI

struct Main: View {
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
                    MainScreen()
                } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                    MainScreenLandscape()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                    MainScreenIpad()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                    MainScreenIpadLand()
                } else {
                    EmptyView()
                }
            }
        }
    }


    struct Main_Previews: PreviewProvider {
        static var previews: some View {
            Group {
               Main()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                Main()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                Main()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)
                

                Main()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

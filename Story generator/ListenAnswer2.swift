//
//  ListenAnswer2.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct ListenAnswer2: View {
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
                    ListenAnswer2()
                } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                    ListenTheAnswer2Land()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                    ListenTheStoryIpad()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                    ListenAnswer2Ipadland()
                } else {
                    EmptyView()
                }
            }
        }
    }


    struct ListenAnswer2_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ListenAnswer2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                ListenAnswer2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                ListenAnswer2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)

                ListenAnswer2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

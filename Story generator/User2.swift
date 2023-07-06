//
//  User2.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct User2: View {
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
                    UserProfile2(userName: "John")
                } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                    UserProfile2Land(userName: "John")
                } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                  UserProfile2Ipad(userName: "John")
                } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                    UserProfile2IpadLand(userName: "John")
                } else {
                    EmptyView()
                }
            }
        }
    }


    struct User2_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                User2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                User2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                User2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)

                User2()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

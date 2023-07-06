//
//  User.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct User: View {
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
                    UserProfile(userName: "John")
                } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                    UserProfileLand(userName: "John")
                } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                  UserProfileIpad(userName: "John")
                } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                    UserProfileIpadLand(userName: "John")
                } else {
                    EmptyView()
                }
            }
        }
    }


    struct User_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                User()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                User()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                User()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)

                User()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

//
//  ListenAnswer.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct ListenAnswer: View {
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


    struct ListenAnswer_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ListenAnswer()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                ListenAnswer()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                ListenAnswer()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)

                ListenAnswer()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

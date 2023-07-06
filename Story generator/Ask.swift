//
//  Ask.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct Ask: View {
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
                    AskAQuestion()
                } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                    AskAQuestionLand()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                  AskAQuestionIpad()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                   AskAQuestionIpadLand()
                } else {
                    EmptyView()
                }
            }
        }
    }


    struct Ask_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                Ask()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                Ask()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                Ask()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)

                Ask()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

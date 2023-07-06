//
//  GeneratingAnswer.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/23/23.
//

import SwiftUI

struct GeneratingAnswer: View {
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
                    GeneratingTheAnswer()
                } else if horizontalSizeClass == .compact && verticalSizeClass == .compact {
                    GeneratingAnswerland()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .regular {
                  GeneratingTheAnswerIpad()
                } else if horizontalSizeClass == .regular && verticalSizeClass == .compact {
                   GeneratingTheAnswerIpadLand()
                } else {
                    EmptyView()
                }
            }
        }
    }


    struct GeneratingAnswer_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                GeneratingAnswer()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .regular)

                GeneratingAnswer()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .compact)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)

                GeneratingAnswer()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .regular)

                GeneratingAnswer()
                    .previewLayout(.device)
                    .environment(\.horizontalSizeClass, .regular)
                    .environment(\.verticalSizeClass, .compact)
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }

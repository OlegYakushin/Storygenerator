//
//  Extension.swift
//  Story generator
//
//  Created by Oleg Yakushin on 6/11/23.
//

import SwiftUI
extension Color {
    static let Blue =  Color("Blue")
    static let BlueShadow =  Color("BlueShadow")
    static let LightBlue =  Color("LightBlue")
    static let LightPink =  Color("LightPink")
    static let Green =  Color("Green")
    static let DarkGreen =  Color("DarkGreen")
    static let Pink =  Color("Pink")
    static let DarkPink =  Color("DarkPink")
    static let Background =  Color("Background")
    static let BackgroundLoading =  Color("BackgroundLoading")
    static let BackgroundPink =  Color("BackgroundPink")
    static let TextDarkBlue =  Color("TextDarkBlue")
    static let CardBlue =  Color("CardBlue")
    static let PinkButton =  Color("PinkButton")
    static let BackgroundUser =  Color("BackgroundUser")
    static let TextBlue =  Color("TextBlue")
    static let BlueBottomMenu =  Color("BlueBottomMenu")
    static let BlueBottomSelected =  Color("BlueBottomSelected")
    static let BlueTrohy =  Color("BlueTrohy")
    static let GreenCard =  Color("GreenCard")
    static let QuitBlue =  Color("QuitBlue")
    static let PinkListen =  Color("PinkListen")
    static let PinkListenLight =  Color("PinkListenLight")
    static let BluePause =  Color("BluePause")
    static let BlueMoral =  Color("BlueMoral")
}


func sizeScreenIpad() -> CGFloat {
    if UIScreen.main.bounds.width > UIScreen.main.bounds.height {
        return UIScreen.main.bounds.width / 1194
    } else {
        return UIScreen.main.bounds.width / 834
    }
}
func sizeScreenIphone() -> CGFloat {
    if UIScreen.main.bounds.width > UIScreen.main.bounds.height {
        return UIScreen.main.bounds.width / 844
    } else {
        return UIScreen.main.bounds.width / 390
    }
}


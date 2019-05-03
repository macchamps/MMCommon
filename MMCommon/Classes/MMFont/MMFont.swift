//
//  UIFontExtension.swift
//  Winds
//
//  Created by Henit Nathwani on 30/10/18.
//  Copyright © 2018 Henit Nathwani. All rights reserved.
//

import Foundation
import UIKit

struct Fonts {
    static let robotoRegularFont = "Roboto-Regular"
    static let proximaBold = "ProximaNovaA-Bold"
    static let proximaRegular = "ProximaNova-Regular"
    static let proximaSemiBold = "ProximaNova-Semibold"

}
let IS_IPHONE4  = abs(UIScreen.main.bounds.size.height - 480) < 1
let IS_IPHONE5  = abs(UIScreen.main.bounds.size.height - 568) < 1
let IS_IPHONE6  = abs(UIScreen.main.bounds.size.height - 667) < 1
let IS_IPHONE6P = abs(UIScreen.main.bounds.size.height - 736) < 1
let IS_IPHONE_X = UIScreen.main.bounds.height == 812
let IS_IPHONE_XsMax = UIScreen.main.bounds.height == 896 //UIDevice.current.iPhoneX
let IS_IPHONE_XR = UIScreen.main.bounds.height == 896 && UIScreen.main.bounds.width == 414

func proportionalFontSize(size:CGFloat) -> CGFloat {
    return (size + (IS_IPHONE6P ? 1 : 0) + (IS_IPHONE6 ? 0 : 0) + (IS_IPHONE5 ? -1 : 0) + (IS_IPHONE4 ? -2 : 0) + ((IS_IPHONE_X || IS_IPHONE_XsMax) ? 2 : 0))
}
// BASE METHOD FOR  FONTS
extension UIFont
{
    class func regularFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont(name: Fonts.robotoRegularFont, size: size) ?? UIFont.systemFont(ofSize: proportionalFontSize(size: size))
    }
    
    class func lightFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont(name: Fonts.robotoRegularFont, size: size) ?? UIFont.systemFont(ofSize: proportionalFontSize(size: size))
    }

    
    class func proximaRegularFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont(name: Fonts.proximaRegular, size: size) ?? UIFont.systemFont(ofSize: proportionalFontSize(size: size))
    }

    
    class func boldFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont(name: Fonts.proximaBold, size: size) ?? UIFont.boldSystemFont(ofSize: proportionalFontSize(size: size))
    }
    
    class func italicFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont.italicSystemFont(ofSize: proportionalFontSize(size: size))
    }

    
    class func mediumFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont(name: Fonts.proximaSemiBold, size: size) ?? UIFont.systemFont(ofSize: proportionalFontSize(size: size), weight: .semibold)

    }

}

// TEXT FIELD FONTS
extension UIFont {
    class func regularTextFieldFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont.regularFontOfSize(size:proportionalFontSize(size: size))
    }
    
    class func boldTextFieldFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont.boldFontOfSize(size:proportionalFontSize(size: size))
    }
}

// BUTTON FONTS
extension UIFont {
    class func regularButtonFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont.regularFontOfSize(size:proportionalFontSize(size: size))
    }
    
    class func boldButtonFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont.boldFontOfSize(size:proportionalFontSize(size: size))
    }
}

// LABEL FONTS
extension UIFont {
    class func regularLabelFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont.regularFontOfSize(size:proportionalFontSize(size: size))
    }
    
    class func lightLabelFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont.lightFontOfSize(size:proportionalFontSize(size: size))
    }

    
    class func mediumLabelFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont.mediumFontOfSize(size:proportionalFontSize(size: size))
    }

    class func boldLabelFontOfSize(size:CGFloat) -> UIFont
    {
        return UIFont.boldFontOfSize(size:proportionalFontSize(size: size))
    }
}

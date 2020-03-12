//
//  UIFontExtension.swift
//  MMCommon
//
//  Created by Monang Champaneri on 12/03/20.
//  Copyright © 2020 Monang Champaneri. All rights reserved.
//

import Foundation
import UIKit

struct Fonts {
     
     static let Light = "CerebriSans-Light"
     static let LightItalic = "CerebriSans-LightItalic"
     static let Medium = "CerebriSans-Medium"
     static let MediumItalic = "CerebriSans-MediumItalic"
     static let Italic = "CerebriSans-Italic"
     static let Regular = "CerebriSans-Regular"
     static let Semibold = "CerebriSans-SemiBold"
     static let SemiBoldItalic = "CerebriSans-SemiBoldItalic"
     static let BoldItalic = "CerebriSans-BoldItalic"
     static let Bold = "CerebriSans-Bold"
     static let ExtraBold = "CerebriSans-ExtraBold"
     static let ExtraBoldItalic = "CerebriSans-ExtraBoldItalic"
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
    
    class func LightFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.Light, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.Light)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func LightItalicFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.LightItalic, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.LightItalic)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func MediumFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.Medium, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.Medium)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func MediumItalicFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.MediumItalic, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.MediumItalic)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func ItalicFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.Italic, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.Italic)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func RegularFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.Regular, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.Regular)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func SemiboldFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.Semibold, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.Semibold)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func SemiBoldItalicFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.SemiBoldItalic, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.SemiBoldItalic)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func BoldItalicFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.BoldItalic, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.BoldItalic)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func BoldFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.Bold, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.Bold)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func ExtraBoldFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.ExtraBold, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.ExtraBold)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
    class func ExtraBoldItalicFontOfSize(size:CGFloat) -> UIFont{
        guard let fontLoad = UIFont(name: Fonts.ExtraBoldItalic, size: proportionalFontSize(size: size)) else {
                    fatalError("""
                        Failed to load the "\(Fonts.ExtraBoldItalic)" font.
                        Make sure the font file is included in the project and the font name is spelled correctly.
                        """
                    )
            }
         return fontLoad
    }
}

//
//  MMViewExtension.swift
//  MMViewExtension
//
//  Created by Monang Champaneri
//  Copyright (c) 2019 Mac Champs. All rights reserved.
//

import Foundation
import UIKit
import PureLayout

extension UIView {
    
    
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            self.frame.size.width = newValue
        }
    }
    
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            self.frame.size.height = newValue
        }
    }
    
    var x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            self.frame.origin.x = newValue
        }
    }
    
    var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            self.frame.origin.y = newValue
        }
    }
    
    var size: CGSize {
        get {
            return self.frame.size
        }
        set {
            self.frame.size = newValue
        }
    }
    
    //Mahesh
    func addShadowBackGround() {
        self.layer.cornerRadius = 8
        self.backgroundColor = UIColor.white
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.09).cgColor
        self.layer.shadowOpacity = 1
        self.accessibilityLabel = "shadowLayer"
        self.tag = 9834
        self.layer.shadowRadius = 8
    }
    
    func addShadowWithCorner(shadowColor color:UIColor = UIColor.gray,
                             shadowOffset offset:CGSize = CGSize(width: 3.0, height: 3.0),
                             shadowOpacity opacity : Float = 0.3,
                             shadowRadius radius : CGFloat = 3.0,
                             cornerRadius :CGFloat = 10.0){
        self.clipsToBounds = false
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = opacity
        self.layer.shadowRadius = radius
        self.layer.cornerRadius = cornerRadius
    }
    
    
    
    func addDefaultShadow(withColor color: UIColor = UIColor.gray, shadowOffset offset:CGSize = CGSize(width: 1, height: 1), opacity op: Float = 0.5)
    {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = op
        self.layer.masksToBounds = false
        self.clipsToBounds = false
    }
    
    func applyCorner(_ radius: CGFloat? = nil)
    {
        self.layoutIfNeeded()
        if let validradius = radius {
            self.layer.cornerRadius = validradius
        } else {
            let newradius = min(self.height, self.width)
            self.applyCorner(newradius / 2)
        }
        self.layer.masksToBounds = true
    }
    
    
    
    //FetchViewWithTag
    func getView(tag aTag:Int) -> AnyObject? {
        if(self.tag == aTag){
            return self
        }
        
        let aSuperView = self.superview
        
        for aSubView in aSuperView!.subviews {
            if(aSubView.tag == aTag){
                return aSubView
            }
        }
        return nil
    }
    
    func applyGradientWithoutCorners(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil,radius:0)
    }
    
    func removeGradientLayer() {
        self.layer.sublayers?.filter({ (layerToCheck) -> Bool in
            return layerToCheck.accessibilityLabel == "gradientLabel"
        }).first?.removeFromSuperlayer()
    }
    
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyThemeButtonGradient() -> Void {
        // THEME BUTTON
        
        self.subviews.filter({ (layerToCheck) -> Bool in
            return layerToCheck.tag == 1178
        }).first?.removeFromSuperview()
        
        
        let layer = UIView(frame: self.bounds)
        layer.layer.cornerRadius = 8
        layer.tag = 1178
        layer.isUserInteractionEnabled = false
        
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [UIColor.blue_color,UIColor.black_color].map { $0.cgColor }
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0.56, y: 7.97)
        gradient.endPoint = CGPoint(x: -0.13, y: -5.05)
        gradient.cornerRadius = 8.0
        layer.layer.addSublayer(gradient)
        
        self.addSubview(layer)
        self.sendSubviewToBack(layer)
    }
    
    func applySideMenuGradient() -> Void {
        // THEME BUTTON
        
        self.subviews.filter({ (layerToCheck) -> Bool in
            return layerToCheck.tag == 1178
        }).first?.removeFromSuperview()
        
        
        
        // SIDE MENU
        
        let layer = UIView(frame: self.bounds)
        layer.tag = 1178
        layer.layer.shadowOffset = CGSize.zero
        layer.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.25).cgColor
        layer.layer.shadowOpacity = 1
        layer.layer.shadowRadius = 20
        layer.isUserInteractionEnabled = false
        
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [
            UIColor(red:0.07, green:0.1, blue:0.3, alpha:1).cgColor,
            UIColor(red:0.11, green:0.02, blue:0.62, alpha:1).cgColor
        ]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: -0.33, y: 0.83)
        gradient.endPoint = CGPoint(x: 1.23, y: 0.59)
        layer.layer.addSublayer(gradient)
        
        self.addSubview(layer)
        self.sendSubviewToBack(layer)
    }
    
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?, radius: CGFloat = 8) -> Void {
        
        self.layer.sublayers?.filter({ (layerToCheck) -> Bool in
            return layerToCheck.accessibilityLabel == "gradientLabel"
        }).first?.removeFromSuperlayer()
        
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 0.98, y: 0.5)
        gradient.cornerRadius = radius
        gradient.accessibilityLabel = "gradientLayer"
        
        
        self.layer.insertSublayer(gradient, at: 0)
        
    }
    
    func addBottomLine() {
        let viewBottomLine = UIView()
        //        viewBottomLine.backgroundColor = UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0)
        //        Selected Colour : 22,128,217
        //        Default Color : 235,235,235
        viewBottomLine.backgroundColor = UIColor.themeColor1
        viewBottomLine.tag = 112233
        self.addSubview(viewBottomLine)
        viewBottomLine.autoPinEdgesToSuperviewEdges(with: .zero, excludingEdge: .top)
        viewBottomLine.autoSetDimension(.height, toSize: 1.0)
        self.layoutIfNeeded()
    }
    
    func getBottomLine() -> UIView {
        return self.subviews.filter({ (viewToCheck) -> Bool in
            return viewToCheck.tag == 112233
        }).first ?? UIView()
    }
    
    func removeBottomLine() {
        if let viewBottom = self.viewWithTag(112233) {
            viewBottom.removeFromSuperview()
        }
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    
    func showMessage(withText message:String) {
        self.removeMessage()
        let labelMessage = MMRegularLabel()
        labelMessage.text = message
        labelMessage.font = UIFont.RegularFontOfSize(size: 10.0)
        labelMessage.textColor = UIColor.red
        self.getBottomLine().backgroundColor = UIColor.red
        self.superview?.addSubview(labelMessage)
        labelMessage.autoPinEdge(.trailing, to: .trailing, of: self)
        labelMessage.autoPinEdge(.top, to: .bottom, of: self, withOffset: 2.0)
        labelMessage.tag = 778899
        self.superview?.layoutIfNeeded()
    }
    
    func removeMessage() {
        if let labelMessage = self.superview?.viewWithTag(778899) {
            labelMessage.removeFromSuperview()
        }
    }
}

extension UINavigationBar {
    
    func setGradientBackground(colors: [UIColor]) {
        
        var updatedFrame = bounds
        updatedFrame.size.height += UIApplication.shared.statusBarFrame.size.height
        let gradientLayer = CAGradientLayer(frame: updatedFrame, colors: colors)
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
                gradientLayer.startPoint = CGPoint(x: -0.45, y: 3.66)
                gradientLayer.endPoint = CGPoint(x: 1.21, y: -0.68)
        setBackgroundImage(gradientLayer.createGradientImage(), for: UIBarMetrics.default)
    }
}


extension CAGradientLayer {
    
    convenience init(frame: CGRect, colors: [UIColor]) {
        self.init()
        self.frame = frame
        self.colors = []
        for color in colors {
            self.colors?.append(color.cgColor)
        }
        //        startPoint = CGPoint(x: 0, y: 0)
        //        endPoint = CGPoint(x: 1, y: 0)
        
        startPoint = CGPoint(x: -0.45, y: 3.66)
        endPoint = CGPoint(x: 1.21, y: -0.68)
        self.locations = [0, 1]
        
    }
    
    func createGradientImage() -> UIImage? {
        
        var image: UIImage? = nil
        UIGraphicsBeginImageContext(bounds.size)
        if let context = UIGraphicsGetCurrentContext() {
            render(in: context)
            image = UIGraphicsGetImageFromCurrentImageContext()
        }
        UIGraphicsEndImageContext()
        return image
    }
    
}


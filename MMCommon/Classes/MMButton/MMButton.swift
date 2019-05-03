//
//  MMButton.sMMft
//  MMButton
//
//  Created by Monang Champaneri
//  Copyright (c) 2019 Mac Champs. All rights reserved.
//
import Foundation
import UIKit


@IBDesignable
class MMButton: UIButton {
    
    var viewGradientLayer: UIView?
    
    @IBInspectable  var gradiantSetColor: Bool = false {
        didSet{
            if gradiantSetColor{
                self.setGradiant()
            }else{
                self.backgroundColor = backgroundColor
            }
        }
    }
    @IBInspectable var colorFirst: UIColor = UIColor.clear{
        didSet{
//            self.applyGradient(colours: [colorFirst,colorSecond])
            if gradiantSetColor{
                self.setGradiant()
            }
        }
    }
    @IBInspectable var colorSecond: UIColor = UIColor.clear {
        
        didSet{
//            self.applyGradient(colours: [colorFirst,colorSecond])
            if gradiantSetColor{
                self.setGradiant()
            }
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var maskToBounce: Bool = false {
        didSet{
            
        }
    }
    func setGradiant(){
        self.applyGradient(colours: [colorFirst,colorSecond], locations: [2,1], radius: cornerRadius)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
@IBDesignable
class MMBackButton: UIButton {
    
    var onTapHandler : (()->Void)?
    @IBInspectable var backImage: UIImage? = nil{
        didSet{
            self.updateButton()
        }
    }
    
    
    
    override func awakeFromNib() {
       
        self.backgroundColor = UIColor.clear
        self.setTitle("", for: .normal)
        self.setTitle("", for: .selected)
        self.addTarget(self, action:#selector(MMBackButton.onTapEvent), for: .touchUpInside)
    }
    func updateButton(){
        
        self.setImage(backImage?.image(WithColor: UIColor.black_color), for: .normal)
        self.setImage(backImage?.image(WithColor: UIColor.black_color), for: .selected)
    }
    @objc internal func onTapEvent() {
        if let validHandler = self.onTapHandler {
            validHandler()
        }
    }
}


class MMThemeButton: MMBoldButton {
    
  
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // SET FONT
        self.setTitleColor(UIColor.white, for: .normal)
        self.setTitleColor(UIColor.white, for: .selected)
        self.titleLabel?.font = UIFont.boldFontOfSize(size: (self.titleLabel?.font.pointSize)!)
        self.backgroundColor = UIColor.themeColor1
        self.applyCorner(8.0)
        

    }

    override func layoutSubviews() {
        super.layoutSubviews()
//        self.applyThemeButtonGradient()
//        self.applyGradient(colours: [UIColor.gradientColor1,UIColor.gradientColor2])
    }
}

class MMThemeButtonOld: MMBoldButton {
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // SET FONT
        self.setTitleColor(UIColor.white, for: .normal)
        self.setTitleColor(UIColor.white, for: .selected)
        self.titleLabel?.font = UIFont.boldFontOfSize(size: 14.0)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.applyGradient(colours: [UIColor.blue_color,UIColor.black])
    }
}



class MMRegularButton: MMButton {
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // SET FONT
        self.titleLabel?.font = UIFont.regularButtonFontOfSize(size: (self.titleLabel?.font.pointSize)!)
//        self.setTitleColor(UIColor.theme, for: .normal)
    }
}

class MMMediumButton: MMButton {
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // SET FONT
        
        self.titleLabel?.font = UIFont.mediumFontOfSize(size: (self.titleLabel?.font.pointSize)!)
    }
}


class MMBoldButton: MMButton {
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // SET FONT
        
        self.titleLabel?.font = UIFont.mediumFontOfSize(size: (self.titleLabel?.font.pointSize)!)
        self.setTitleColor(UIColor.themeColor2, for: .normal)
        self.tintColor = UIColor.themeColor3
//        self.titleLabel?.text = self.titleLabel?.text?.capital
    }
}

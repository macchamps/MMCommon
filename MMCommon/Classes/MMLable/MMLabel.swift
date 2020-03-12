//
//  MMLable.swift
//  MMLable
//
//  Created by Monang Champaneri
//  Copyright (c) 2019 Mac Champs. All rights reserved.
//
import Foundation
import UIKit


@IBDesignable
class MMLabel: UILabel {
    
    @IBInspectable var border: CGFloat = 0{
        didSet{
            layer.borderWidth = border
        }
    }
    @IBInspectable var shadowOpacity: Float = 0 {
        didSet{
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0{
        didSet{
            layer.shadowRadius = shadowRadius
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var colorShadow: UIColor = UIColor.clear {
        didSet{
            layer.shadowColor = colorShadow.cgColor
        }
    }
    @IBInspectable var maskToBounce: Bool = false {
        didSet{
            
        }
    }
    //MARK: LIFE CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // SET ALL LABELS TO VARY size BASED ON TEXT
        self.numberOfLines = 0
    }
    
}


class MMRegularLabel: MMLabel {
    
    //MARK: LIFE CYCLE
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // SET FONT
        self.font = UIFont.RegularFontOfSize(size: self.font.pointSize)
    }
}

class MMLightLabel: MMLabel {
    
    //MARK: LIFE CYCLE
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // SET FONT
        self.font = UIFont.LightFontOfSize(size: self.font.pointSize)
    }
}


class MMBoldLabel: MMLabel {
    
    //MARK: LIFE CYCLE
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // SET FONT
        self.font = UIFont.boldSystemFont(ofSize: self.font.pointSize)
    }
}


class MMMediumLabel: MMLabel {
    
    //MARK: LIFE CYCLE
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // SET FONT
        self.font = UIFont.MediumFontOfSize(size: self.font.pointSize)
    }
}




//
//  UIViewExtension.swift
//  my-pet
//
//  Created by Mateus Sousa on 08/12/19.
//  Copyright © 2019 Mateus Sousa. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorners(radius: CGFloat){
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }
    
    func roundCorners(){
        roundCorners(radius: frame.size.height/2)
    }
    
    func dropShadow(color: UIColor = .black, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat, scale: Bool = true){
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.opacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}

//
//  UIView+Shadow.swift
//  LongPressButton
//
//  Created by Hao Zheng on 9/25/16.
//  Copyright © 2016 Hao Zheng. All rights reserved.
//

import UIKit

extension UIView {
    func addInsetShadow(radius: CGFloat, alpha: CGFloat) {
        let color: UIColor = .black
        let shadowView = UIView(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        
        let shadow = CAGradientLayer.init()
        //top
        shadow.startPoint = CGPoint.init(x: 0.5, y: 0)
        shadow.endPoint = CGPoint.init(x: 0.5, y: 1)
        shadow.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: radius)
        //bottom
        shadow.startPoint = CGPoint.init(x: 0.5, y: 0)
        shadow.endPoint = CGPoint.init(x: 0.5, y: 1)
        shadow.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: radius)

    }
}

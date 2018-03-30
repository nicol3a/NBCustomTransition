//
//  RoundedView.swift
//  NBCustomTransition
//
//  Created by Bichon, Nicolas on 2018-03-28.
//  Copyright © 2018 Nicolas Bichon. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }
}

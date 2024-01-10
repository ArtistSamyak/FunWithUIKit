//
//  RoundCorner.swift
//  FunWithUIKit
//
//  Created by Samyak Pawar on 10/01/2024.
//

import UIKit

extension UIView {
    func roundCorners(corners: UIRectCorner, radii: CGSize) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: radii)
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

//
//  Zstack.ArrangedView.swift
//  FunWithUIKit
//
//  Created by Samyak Pawar on 09/01/2024.
//

import UIKit

struct ArrangedView {
    
    let view: UIView
    let offset: CGPoint
    
    init(view: UIView, offset: CGPoint = .zero) {
        self.view = view
        self.offset = offset
    }
}

//
//  ZStack.swift
//  FunWithUIKit
//
//  Created by Samyak Pawar on 09/01/2024.
//

import UIKit

class ZStack: UIView {
    
    //  MARK: Properties

    var arrangedSubviews: [ArrangedView] = [] {
        didSet {
            setupLayout()
            setViewConstraints()
        }
    }
    
    var allignment: Alignment = .center {
        didSet {
            setupLayout()
            setViewConstraints()
        }
    }
    
    //  MARK: Init

    public convenience init(arrangedSubviews views: [ArrangedView] = [], allign: Alignment = .center) {
        self.init()
        self.arrangedSubviews = views
        self.allignment = allign
        
        setupLayout()
        setViewConstraints()
    }
    
    //  MARK: LifeCycle
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    // MARK: Layout & Constraints
        
    private func setupLayout() {
        subviews.forEach { $0.removeFromSuperview() }
        arrangedSubviews.forEach {
            addSubview($0.view)
        }
    }
        
    private func setViewConstraints() {
        
        subviews.forEach { subview in
            subview.constraints.forEach { constraint in
                if constraint.identifier == "ZStack" {
                    constraint.isActive = false
                }
            }
        }
        
        switch allignment {
        case .topLeading:
            for index in 0..<subviews.count {
                let arrangedSubview: ArrangedView = arrangedSubviews[index]
                arrangedSubview.view.translatesAutoresizingMaskIntoConstraints = false
                let constraints = [
                    arrangedSubview.view.topAnchor.constraint(equalTo: topAnchor, constant: arrangedSubview.offset.y),
                    arrangedSubview.view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: arrangedSubview.offset.x)
                ]
                constraints.forEach { $0.identifier = "ZStack" }
                NSLayoutConstraint.activate(constraints)
            }
        case .leading:
            for index in 0..<subviews.count {
                let arrangedSubview: ArrangedView = arrangedSubviews[index]
                arrangedSubview.view.translatesAutoresizingMaskIntoConstraints = false
                let constraints = [
                    arrangedSubview.view.centerYAnchor.constraint(equalTo: centerYAnchor, constant: arrangedSubview.offset.y),
                    arrangedSubview.view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: arrangedSubview.offset.x)
                ]
                constraints.forEach { $0.identifier = "ZStack" }
                NSLayoutConstraint.activate(constraints)
            }
        case .bottomLeading:
            for index in 0..<subviews.count {
                let arrangedSubview: ArrangedView = arrangedSubviews[index]
                arrangedSubview.view.translatesAutoresizingMaskIntoConstraints = false
                let constraints = [
                    arrangedSubview.view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: arrangedSubview.offset.y),
                    arrangedSubview.view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: arrangedSubview.offset.x)
                ]
                constraints.forEach { $0.identifier = "ZStack" }
                NSLayoutConstraint.activate(constraints)
            }
        case .bottom:
            for index in 0..<subviews.count {
                let arrangedSubview: ArrangedView = arrangedSubviews[index]
                arrangedSubview.view.translatesAutoresizingMaskIntoConstraints = false
                let constraints = [
                    arrangedSubview.view.centerXAnchor.constraint(equalTo: centerXAnchor, constant: arrangedSubview.offset.x),
                    arrangedSubview.view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: arrangedSubview.offset.y)
                ]
                constraints.forEach { $0.identifier = "ZStack" }
                NSLayoutConstraint.activate(constraints)
            }
        case .bottomTrailing:
            for index in 0..<subviews.count {
                let arrangedSubview: ArrangedView = arrangedSubviews[index]
                arrangedSubview.view.translatesAutoresizingMaskIntoConstraints = false
                let constraints = [
                    arrangedSubview.view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: arrangedSubview.offset.y),
                    arrangedSubview.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: arrangedSubview.offset.x)
                ]
                constraints.forEach { $0.identifier = "ZStack" }
                NSLayoutConstraint.activate(constraints)
            }
        case .trailing:
            for index in 0..<subviews.count {
                let arrangedSubview: ArrangedView = arrangedSubviews[index]
                arrangedSubview.view.translatesAutoresizingMaskIntoConstraints = false
                let constraints = [
                    arrangedSubview.view.centerYAnchor.constraint(equalTo: centerYAnchor, constant: arrangedSubview.offset.y),
                    arrangedSubview.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: arrangedSubview.offset.x)
                ]
                constraints.forEach { $0.identifier = "ZStack" }
                NSLayoutConstraint.activate(constraints)
            }
        case .topTrailing:
            for index in 0..<subviews.count {
                let arrangedSubview: ArrangedView = arrangedSubviews[index]
                arrangedSubview.view.translatesAutoresizingMaskIntoConstraints = false
                let constraints = [
                    arrangedSubview.view.topAnchor.constraint(equalTo: topAnchor, constant: arrangedSubview.offset.y),
                    arrangedSubview.view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: arrangedSubview.offset.x)
                ]
                constraints.forEach { $0.identifier = "ZStack" }
                NSLayoutConstraint.activate(constraints)
            }
        case .top:
            for index in 0..<subviews.count {
                let arrangedSubview: ArrangedView = arrangedSubviews[index]
                arrangedSubview.view.translatesAutoresizingMaskIntoConstraints = false
                let constraints = [
                    arrangedSubview.view.centerXAnchor.constraint(equalTo: centerXAnchor, constant: arrangedSubview.offset.x),
                    arrangedSubview.view.topAnchor.constraint(equalTo: topAnchor, constant: arrangedSubview.offset.y)
                ]
                constraints.forEach { $0.identifier = "ZStack" }
                NSLayoutConstraint.activate(constraints)
            }
        case .center:
            for index in 0..<subviews.count {
                let arrangedSubview: ArrangedView = arrangedSubviews[index]
                arrangedSubview.view.translatesAutoresizingMaskIntoConstraints = false
                let constraints = [
                    arrangedSubview.view.centerXAnchor.constraint(equalTo: centerXAnchor, constant: arrangedSubview.offset.x),
                    arrangedSubview.view.centerYAnchor.constraint(equalTo: centerYAnchor, constant: arrangedSubview.offset.y)
                ]
                constraints.forEach { $0.identifier = "ZStack" }
                NSLayoutConstraint.activate(constraints)
            }
        }
    }
    
    //  MARK: Methods
    
    func addArrangedSubview(_ view: ArrangedView) {
        arrangedSubviews.append(view)
    }
}

//
//  ViewController.swift
//  FunWithUIKit
//
//  Created by Samyak Pawar on 09/01/2024.
//

import UIKit
import ZStack

class ViewController: UIViewController {
    
    // MARK: Init
    
    init() {
        super.init(nibName: nil, bundle: nil)
        layoutSubviews()
        layoutConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        navigationItem.title = "Use ZStack in UIKit"
        
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
            let allignment = [
                Alignment.top,
                Alignment.topLeading,
                Alignment.topTrailing,
                Alignment.leading,
                Alignment.bottomLeading,
                Alignment.bottom,
                Alignment.bottomTrailing,
                Alignment.trailing,
                Alignment.topTrailing,
                Alignment.top,
                Alignment.center
            ]
            .randomElement()!
            
            self.zStack.allignment = allignment
            self.titleLabel.text = "Allignment:\n\(allignment.rawValue)"
        }
    }
    
    // MARK: Views
    
    private let titleLabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30, weight: .black)
        return label
    }()
        
    private let box1: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 0, y: 0))
        box.view.backgroundColor = .red
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let box2: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 10, y: 20))
        box.view.backgroundColor = .orange
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let box3: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 20, y: 10))
        box.view.backgroundColor = .yellow
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let box4: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 40, y: 50))
        box.view.backgroundColor = .green
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let box5: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 10, y: 20))
        box.view.backgroundColor = .systemTeal
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let box6: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 30, y: 50))
        box.view.backgroundColor = .blue
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let box7: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 10, y: 20))
        box.view.backgroundColor = .systemIndigo
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let box8: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 40, y: 20))
        box.view.backgroundColor = .purple
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let box9: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 50, y: 20))
        box.view.backgroundColor = .systemPink
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let box10: ArrangedView = {
        let box = ArrangedView(view: UIView(), offset: .init(x: 30, y: 20))
        box.view.backgroundColor = .gray
        box.view.layer.cornerRadius = 20
        return box
    }()
    
    private let zStack: ZStack = {
        let stack = ZStack(allign: .top)
        return stack
    }()
    
    

    // MARK: Layout & Constraints
        
    private func layoutSubviews() {
        zStack.addArrangedSubview(box1)
        zStack.addArrangedSubview(box2)
        zStack.addArrangedSubview(box3)
        zStack.addArrangedSubview(box4)
        zStack.addArrangedSubview(box5)
        zStack.addArrangedSubview(box6)
        zStack.addArrangedSubview(box7)
        zStack.addArrangedSubview(box8)
        zStack.addArrangedSubview(box9)
        zStack.addArrangedSubview(box10)
        
        view.addSubview(zStack)
        view.addSubview(titleLabel)
    }
        
    private func layoutConstraints() {
        
        box1.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box1.view.widthAnchor.constraint(equalToConstant: 270),
            box1.view.heightAnchor.constraint(equalToConstant: 270)
        ])
        
        box2.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box2.view.widthAnchor.constraint(equalToConstant: 240),
            box2.view.heightAnchor.constraint(equalToConstant: 240)
        ])
        
        box3.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box3.view.widthAnchor.constraint(equalToConstant: 210),
            box3.view.heightAnchor.constraint(equalToConstant: 210)
        ])
        
        box4.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box4.view.widthAnchor.constraint(equalToConstant: 180),
            box4.view.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        box5.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box5.view.widthAnchor.constraint(equalToConstant: 150),
            box5.view.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        box6.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box6.view.widthAnchor.constraint(equalToConstant: 120),
            box6.view.heightAnchor.constraint(equalToConstant: 120)
        ])
        
        box7.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box7.view.widthAnchor.constraint(equalToConstant: 90),
            box7.view.heightAnchor.constraint(equalToConstant: 90)
        ])
        
        box8.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box8.view.widthAnchor.constraint(equalToConstant: 60),
            box8.view.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        box9.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box9.view.widthAnchor.constraint(equalToConstant: 30),
            box9.view.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        box10.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            box10.view.widthAnchor.constraint(equalToConstant: 10),
            box10.view.heightAnchor.constraint(equalToConstant: 10)
        ])
        
        zStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            zStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            zStack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60),
            zStack.widthAnchor.constraint(equalToConstant: 300),
            zStack.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.bottomAnchor.constraint(equalTo: zStack.topAnchor, constant: -80),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            titleLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 50)
        ])
    }

}


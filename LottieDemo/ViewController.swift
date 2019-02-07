//
//  FirstController.swift
//  LottieDemo
//
//  Created by Ljubisa Katana on 2/7/19.
//  Copyright © 2019 Ljubisa Katana. All rights reserved.
//

import UIKit
import Lottie

class FirstController: UIViewController {
    
    // MARK: - Properties
    
    let animationView = LOTAnimationView(name: "4138-trip")
    
    let animationButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.backgroundColor = #colorLiteral(red: 0.4074602723, green: 0.9122487903, blue: 0.7774915099, alpha: 1)
        button.tintColor = #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.setTitle("Animate", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(hendler), for: .touchUpInside)
        return button
    }()

    // MARK: - Viewv Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
          view.backgroundColor = .red
        
        configureUI()
    }
}

private extension FirstController {
    func configureUI() {
        animationView.alpha = 0
        let size = animationButton.frame.size.height = CGFloat(10)
    
        view.addSubview(animationButton)
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
//                animationView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
//                animationView.bottomAnchor.constraint(greaterThanOrEqualTo: animationButton.topAnchor, constant: -30),
//                animationView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//                animationView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
                animationButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
                animationButton.heightAnchor.constraint(equalToConstant: 50),
                animationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                animationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
    
    @objc func hendler() {
//        let animationView = LOTAnimationView(name: "4138-trip")
//        self.view.addSubview(animationView)
        UIView.animate(withDuration: 0.3) {
            self.animationView.alpha = 1
        }
        
        animationView.play{ (finished) in
            // Do Something
        }

        print("Radi")
    }
}

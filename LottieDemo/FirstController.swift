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
    
    let viewBox: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
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
        animationView.translatesAutoresizingMaskIntoConstraints = true
        
        view.addSubview(viewBox)
        viewBox.addSubview(animationView)
        view.addSubview(animationButton)
        
        NSLayoutConstraint.activate([
            viewBox.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewBox.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            animationView.centerXAnchor.constraint(equalTo: viewBox.centerXAnchor),
            animationView.centerYAnchor.constraint(equalTo: viewBox.centerYAnchor),
            
            animationButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            animationButton.heightAnchor.constraint(equalToConstant: 50),
            animationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            animationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            ])
    }
    
    @objc func hendler() {
        UIView.animate(withDuration: 0.3) {
            self.animationView.alpha = 1
        }
        
        animationView.play{ (finished) in
            if finished {
                let vc = SecondController()
                self.present(vc, animated: true, completion: nil)
            }
        }
        
        print("Radi")
    }
}

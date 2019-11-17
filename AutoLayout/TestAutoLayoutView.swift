//
//  TestAutoLayoutView.swift
//  TreeSwift
//
//  Created by sunil.kumar1 on 11/17/19.
//  Copyright © 2019 sunil.kumar1. All rights reserved.
//

import UIKit

class TestAutoLayoutView: UIViewController {
    
    weak var testView: UIView!
    weak var topConstraint: NSLayoutConstraint!
    var bottomConstraint: NSLayoutConstraint!
    var heightConstraint: NSLayoutConstraint!
    
    override func loadView() {
        super.loadView()
        
        let testView = UIView(frame: .zero)
        testView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(testView)
        
        let topConstraint = testView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor)
        let bottomConstraint = testView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        
        NSLayoutConstraint.activate([
            topConstraint,
            testView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            testView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            bottomConstraint,
        ])
        
        let heightConstraint = testView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor,
                                                                multiplier: 0.5)
        
        self.testView = testView
        self.topConstraint = topConstraint
        self.bottomConstraint = bottomConstraint
        self.heightConstraint = heightConstraint
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.testView.backgroundColor = .red
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapped))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func tapped() {
        if self.topConstraint.constant != 0 {
            self.topConstraint.constant = 0
        }
        else {
            self.topConstraint.constant = 64
        }
        
        if self.bottomConstraint.isActive {
            NSLayoutConstraint.deactivate([self.bottomConstraint])
            NSLayoutConstraint.activate([self.heightConstraint])
            
        }
        else {
            NSLayoutConstraint.deactivate([self.heightConstraint])
            NSLayoutConstraint.activate([self.bottomConstraint])
        }
        
        UIView.animate(withDuration: 0.25) {
            self.view.layoutIfNeeded()
        }
    }
}

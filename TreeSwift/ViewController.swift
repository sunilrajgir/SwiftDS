//
//  ViewController.swift
//  TreeSwift
//
//  Created by sunil.kumar1 on 6/24/19.
//  Copyright © 2019 sunil.kumar1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    weak var testView: UIView!
    override func loadView() {
        super.loadView()

        let testView = UIView(frame: .zero)
        testView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(testView)
        NSLayoutConstraint.activate([
            testView.widthAnchor.constraint(equalToConstant: 64),
            testView.widthAnchor.constraint(equalTo: testView.heightAnchor),
            testView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            testView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
        self.testView = testView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.testView.backgroundColor = .red
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapAction)) 
        self.testView.addGestureRecognizer(gesture)
    }
    
    @objc func tapAction() {
        let viewController = TestAutoLayoutView()
        self.present(viewController, animated: true, completion: nil)
    }

}



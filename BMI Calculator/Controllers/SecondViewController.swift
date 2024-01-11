//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Priyal PORWAL on 11/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var bmiValue: String

    init(bmiValue: String) {
        self.bmiValue = bmiValue
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) { nil }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray

        let label = UILabel().forAutoLayout()
        label.text = "Hello"
        label.frame = .init(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)

    }
}

extension UIView {
    @discardableResult
    func forAutoLayout() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}

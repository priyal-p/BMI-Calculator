//
//  BMI.swift
//  BMI Calculator
//
//  Created by Priyal PORWAL on 11/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    enum Category {
        case underweight
        case normalWeight
        case overweight

        init?(value: Float) {
            switch value {
            case ..<18.5:
                self = .underweight
            case 18.5...24.9:
                self = .normalWeight
            case 25...:
                self = .overweight
            default:
                return nil
            }
        }
    }

    let value: Float
    lazy var range: Category? = Category(value: value)
    
    lazy var advice: String = {
        guard let range else { return "" }
        switch range {
        case .underweight:
            return "Eat more pies!"
        case .normalWeight:
            return "Fit as a fiddle!"
        case .overweight:
            return "Eat less pies!"
        }
    }()

    lazy var color: UIColor = {
        guard let range else { return .gray }
        switch range {
        case .underweight:
            return .blue
        case .normalWeight:
            return .green
        case .overweight:
            return .red
        }
    }()
}

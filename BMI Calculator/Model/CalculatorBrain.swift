//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Priyal PORWAL on 11/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    private var bmi: BMI?

    @discardableResult
    mutating func calculateBMI(height: Float, weight: Float) -> Float {
        bmi = BMI(value: weight/pow(height, 2))
        return bmi?.value ?? .zero
    }

    func getBMI() -> Float {
        return bmi?.value ?? .zero
    }

    func getAdvice() -> String {
        guard var bmi else { return "" }
        return bmi.advice
    }

    func getBackgroundColor() -> UIColor {
        guard var bmi else { return .gray }
        return bmi.color
    }
}

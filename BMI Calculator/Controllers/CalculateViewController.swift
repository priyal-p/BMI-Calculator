//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {


    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weight: UILabel!


    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderDidChange(_ sender: UISlider) {
        print(String(format: "Height: %.1f", sender.value))
        heightLabel.text = String(format: "%.1fm", sender.value)
    }

    @IBAction func weightSliderDidChange(_ sender: UISlider) {
//        print(String(format: "Width: %.0f", sender.value))
        print("Width: ", Int(sender.value))
        weight.text = "\(Int(sender.value))Kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as? ResultsViewController
            destinationVC?.bmiValue = formattedBMIValue()
            destinationVC?.advice = calculatorBrain.getAdvice()
            destinationVC?.view.backgroundColor = calculatorBrain.getBackgroundColor()
        }
    }

    private func formattedBMIValue() -> String {
        return String(format: "%.1f", calculatorBrain.getBMI())
    }
}

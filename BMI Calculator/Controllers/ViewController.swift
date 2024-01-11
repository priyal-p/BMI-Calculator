//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weight: UILabel!


    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

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
//        print(weight/(height*height))
        let bmiValue = weight/pow(height, 2)
        print(bmiValue)

        let secondViewController = SecondViewController(bmiValue: String(format: "%.1f", bmiValue))

        self.present(secondViewController, animated: true) {
            
        }
    }
}

//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Sahid Reza on 15/12/22.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    var calculatoreBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        heightLabel.text = calculatoreBrain.gethightSlidervalue(value: sender.value)
        
    }
    
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        weightLabel.text = calculatoreBrain.getweightSlidervalue(value: sender.value)
    }
    
    
    @IBAction func pressCalculateButton(_ sender: UIButton) {
        
        let getHight = heightSlider.value
        let getweight = weightSlider.value
        calculatoreBrain.calculateBMIValue(height: getHight, weight: getweight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = calculatoreBrain.getBmiValue()
            destinationVc.advice = calculatoreBrain.getBmiAdvice()
            destinationVc.colour = calculatoreBrain.getBmiClour()
            
        }
        
        
    }
    
    
    
    
    
}


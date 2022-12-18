//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Sahid Reza on 18/12/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resultMessageLabel: UILabel!
    
    var bmiValue:String?
    var advice:String?
    var colour:UIColor?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmiValue!
        resultMessageLabel.text = advice!
        
        view.backgroundColor = colour
        
      
      
    }
    
    
    @IBAction func recalculatePress(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    

   

}

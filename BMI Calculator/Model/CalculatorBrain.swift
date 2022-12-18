//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sahid Reza on 18/12/22.
//

import Foundation
import UIKit

struct CalculatorBrain{
    
    var bmi:BMI?
    
    func gethightSlidervalue(value:Float) ->String {
        
        let getHeight = String(format: "%.2f", value)
        return "\(getHeight)cm"
    }
    
    func getweightSlidervalue(value:Float) ->String {
        
        let getWeight = String(format: "%.2f", value)
        return "\(getWeight)kg"
    }
    
    mutating func calculateBMIValue(height:Float,weight:Float){
        
        let getCalculation = weight / (height * height)
        
        if getCalculation < 18.5 {
            
            bmi = BMI(value: getCalculation, advice: "Please more Eat", color: UIColor.red)
            
            print("UnderWeight")
        } else if getCalculation < 24.9 {
            
            bmi = BMI(value: getCalculation, advice: "You are fit", color: UIColor.green)
       
        } else {
            bmi = BMI(value: getCalculation, advice: "your are too fat", color: UIColor.blue)
        }
        
        
    }
    
    func getBmiValue() -> String {
        
        let bmito1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmito1Decimal
        
    }
    
    func getBmiAdvice() -> String{
        
        let advice = bmi?.advice ?? "Internal Error"
        
        return advice
    }
    
    func getBmiClour() ->UIColor {
        
        let color = bmi?.color ?? UIColor.gray
        return color
    }
    
    
    
}
    
  
    




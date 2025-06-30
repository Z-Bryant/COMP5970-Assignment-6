//
//  ViewController.swift
//  Assignment 6
//
//  Created by Auburn University Student on 6/28/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var currencyInput: UITextField!
    @IBOutlet weak var enterUSDLabel: UILabel!
    var converterLogic = ConverterLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func euro(_ sender: UISwitch) {
        
    }
    
    @IBAction func pound(_ sender: UISwitch) {
        
    }
    
    @IBAction func yen(_ sender: UISwitch) {
        
    }
    
    @IBAction func peso(_ sender: UISwitch) {
        
    }
    
    @IBAction func convert(_ sender: UIButton) {
        if isValid(currencyInput.text!){
            enterUSDLabel.text = "Enter USD:"
            
        } else {
            enterUSDLabel.text = "Integer Only!"
        }
    }
    
    func isValid(_ userInput: String) -> Bool{
        return converterLogic.valid(userInput)
                
    }
    func convertUSDToEuro(_ userInput: String, conversionRate: Double) -> Double {
        let euroAmount = Double(Int(userInput)!) * conversionRate
        totalEuro = round((Double(Int(currencyInput.text!)!) * 0.80) * 100)
        return round(euroAmount * 100) / 100 // rounded to 2 decimal places
    }
    
    func convertUSDToPound(_ userInput: String, conversionRate: Double) -> Double {
        let poundAmount = Double(Int(userInput)!) * conversionRate
        return round(poundAmount * 100) / 100 // rounded to 2 decimal places
    }
    
    func convertUSDToYen(_ userInput: String, conversionRate: Double) -> Double {
        let yenAmount = Double(Int(userInput)!) * conversionRate
        return round(yenAmount * 100) / 100 // rounded to 2 decimal places
    }
    
    func convertUSDToPeso(_ userInput: String, conversionRate: Double) -> Double {
        let pesoAmount = Double(Int(userInput)!) * conversionRate
        return round(pesoAmount * 100) / 100 // rounded to 2 decimal places
    }
    
}


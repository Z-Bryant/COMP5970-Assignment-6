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
    var amount: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func euro(_ sender: UISwitch) {
        converterLogic.setEuroSwitch(sender.isOn)
    }
    
    @IBAction func pound(_ sender: UISwitch) {
        converterLogic.setPoundSwitch(sender.isOn)
    }
    
    @IBAction func yen(_ sender: UISwitch) {
        converterLogic.setYenSwitch(sender.isOn)
    }
    
    @IBAction func peso(_ sender: UISwitch) {
        converterLogic.setPesoSwitch(sender.isOn)
    }
    
    @IBAction func convert(_ sender: UIButton) {
        if isValid(currencyInput.text!){
            enterUSDLabel.text = "Enter USD:"
            amount = converterLogic.convertCurrency(currencyInput.text!)
            
            self.performSegue(withIdentifier: "toConvertedCurrency", sender: self)
            
        } else {
            enterUSDLabel.text = "Integer Only!"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConvertedCurrency"{
            let navigation = segue.destination as! ConverterView
            navigation.amount = amount
        }
    }
    
    func isValid(_ userInput: String) -> Bool{
        return converterLogic.valid(userInput)
    }

    
}


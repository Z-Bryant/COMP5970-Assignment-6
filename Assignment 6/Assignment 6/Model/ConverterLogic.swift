//
//  ConverterLogic.swift
//  Assignment 6
//
//  Created by Auburn University Student on 6/28/25.
//

import Foundation

struct ConverterLogic {
    var euroSwitch = true
    var poundSwitch = true
    var yenSwitch = true
    var pesoSwitch = true
    var totalEuro : Double = 0.0
    var totalPound : Double = 0.0
    var totalYen : Double = 0.0
    var totalPeso : Double = 0.0
    
    mutating func setEuroSwitch(_ switchValue: Bool) {
        if switchValue {
            euroSwitch = true
        } else {
            euroSwitch = false
        }
    }
    mutating func setPoundSwitch(_ switchValue: Bool) {
        if switchValue {
            poundSwitch = true
        } else {
            poundSwitch = false
        }
    }
    mutating func setYenSwitch(_ switchValue: Bool) {
        if switchValue {
            yenSwitch = true
        } else {
            yenSwitch = false
        }
    }
    mutating func setPesoSwitch(_ switchValue: Bool) {
        if switchValue {
            pesoSwitch = true
        } else {
            pesoSwitch = false
        }
    }
    
    mutating func valid(_ userInput: String) -> Bool{
        return (Int(userInput) != nil &&
                Int(userInput)! > 0)
    }
    
    mutating func convertCurrency() -> String {
        if euroSwitch == true {
            //totalEuro = round((Double(Int(currencyInput.text!)!) * 0.80) * 100)
            totalEuro = getTotalEuro(currencyInput.text!)
        }
        if poundSwitch == true {
            totalPound = round((Double(Int(currencyInput.text!)!) * 0.73) * 100)
            //totalPound = convertUSDToPound(currencyInput.text!, conversionRate: 0.73)
        }
        if yenSwitch == true {
            totalYen = round((Double(Int(currencyInput.text!)!) * 144.88) * 100)
            //totalYen = convertUSDToYen(currencyInput.text!, conversionRate: 144.88)
        }
        if pesoSwitch == true {
            totalPeso = round((Double(Int(currencyInput.text!)!) * 18.82) * 100)
            //totalPeso = convertUSDToPeso(currencyInput.text!, conversionRate: 18.82)
        }
    }
    
    mutating func getTotalEuro(_ userInput: String) -> Double {
        let totalEuro = round(((Double(Int(userInput)!) * 0.73) * 100) / 100)
        //return round(totalEuro * 100) / 100 // rounded to 2 decimal places
        return totalEuro
    }
//    mutating func getTotalPound(_ amount: Int) -> Float {
//        return totalPound
//    }
//    mutating func getTotalYen(_ amount: Int) -> Float {
//        return totalYen
//    }
//    mutating func getTotalPeso(_ amount: Int) -> Float {
//        return totalPeso
//    }
    
}

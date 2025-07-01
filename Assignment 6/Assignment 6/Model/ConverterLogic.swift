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
    var totalEuro : String = ""
    var totalPound : String = ""
    var totalYen : String = ""
    var totalPeso : String = ""
    var myList: [String] = ["0.0", "0.0", "0.0", "0.0"]
    
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
    
    mutating func convertCurrency(_ userInput: String) -> [String] {
        if euroSwitch == true {
            totalEuro = getTotalEuro(userInput)
            myList[0] = totalEuro
        } else {
            totalEuro = "0.00"
            myList[0] = totalEuro
        }
        if poundSwitch == true {
            totalPound = getTotalPound(userInput)
            myList[1] = totalPound
        } else {
            totalPound = "0.00"
            myList[1] = totalEuro
        }
        if yenSwitch == true {
            totalYen = getTotalYen(userInput)
            myList[2] = totalYen
        } else {
            totalYen = "0.00"
            myList[2] = totalEuro
        }
        if pesoSwitch == true {
            totalPeso = getTotalPeso(userInput)
            myList[3] = totalPeso
        } else {
            totalPeso = "0.00"
            myList[3] = totalEuro
        }
        return myList
    }
    
    mutating func getTotalEuro(_ userInput: String) -> String {
        let totalEuro = ((Double(Int(userInput)!) * 0.80) * 100) / 100
        return String(format: "%.2f", totalEuro)
    }
    
    mutating func getTotalPound(_ userInput: String) -> String {
        let totalPound = ((Double(Int(userInput)!) * 0.73) * 100) / 100
        return String(format: "%.2f", totalPound)
    }
    
    mutating func getTotalYen(_ userInput: String) -> String {
        let totalYen = ((Double(Int(userInput)!) * 144.88) * 100) / 100
        return String(format: "%.2f", totalYen)
    }
    
    mutating func getTotalPeso(_ userInput: String) -> String {
        let totalPeso = ((Double(Int(userInput)!) * 18.82) * 100) / 100
        return String(format: "%.2f", totalPeso)
    }
    
}

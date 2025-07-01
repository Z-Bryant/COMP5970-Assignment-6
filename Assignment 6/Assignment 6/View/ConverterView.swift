//
//  ConverterView.swift
//  Assignment 6
//
//  Created by Auburn University Student on 7/1/25.
//

import UIKit

class ConverterView: UIViewController {

    @IBOutlet weak var euroAmountLabel: UILabel!
    @IBOutlet weak var poundAmountLabel: UILabel!
    @IBOutlet weak var yenAmountLabel: UILabel!
    @IBOutlet weak var pesoAmountLabel: UILabel!
    
    var amount : [String] = ["", "", "", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        euroAmountLabel.text = "Euro amount: \(amount[0])"
        poundAmountLabel.text = "Pound amount: \(amount[1])"
        yenAmountLabel.text = "Yen amount: \(amount[2])"
        pesoAmountLabel.text = "Peso amount: \(amount[3])"

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

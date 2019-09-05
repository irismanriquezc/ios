//
//  calculate.swift
//  TipCalculator
//
//  Created by Iris Manriquez on 8/26/19.
//  Copyright © 2019 Iris Manriquez. All rights reserved.
//

import UIKit

class calculate: UIViewController {
    
    
    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var percentControl: UISegmentedControl!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.10 ,0.15]
        let bill = Double(billAmount.text!) ?? 0
        let tip = (bill * tipPercent[percentControl.selectedSegmentIndex])
        
        let total = tip + bill
        tipAmount.text = String(format: "$%.2f",tip)
        totalAmount.text = String(format: "$%.2f",total)
        
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

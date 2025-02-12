//
//  ViewController.swift
//  Anishetty_Assignment02
//
//  Created by Ashwith Sai Anishetty on 2/6/25.
//

import UIKit

class ViewController: UIViewController {
    //Text fields
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var billAmountOutlet: UITextField!
    
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    
    //Labels
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //submit button
    @IBAction func submitBTN(_ sender: UIButton) {
        //Assigning variables
        var NAME = nameOutlet.text!
        
        var BILLAMOUNT = Double(billAmountOutlet.text!)!
        
        var TIPPERCENTAGE = Double(tipPercentageOutlet.text!)!
        
        var TIPAMOUNT = BILLAMOUNT * (TIPPERCENTAGE / 100)
        
        var TOTALAMOUNT = BILLAMOUNT + TIPAMOUNT
        //Dispalying  the output in labels
        nameLabel.text = "Name: \(NAME)"
        
        billAmountLabel.text = "Bill Amount: $\(String(format: "%.2f", BILLAMOUNT ))"
        
        tipAmountLabel.text = "Tip Amount:  $\(String(format: "%.2f", TIPAMOUNT))"
        
        totalAmountLabel.text = "Total Amount: $\(String(format: "%.2f", TOTALAMOUNT))"
        
    }
    //Reset button
    @IBAction func resetBTN(_ sender: UIButton) {
        nameLabel.text = " "
        
        billAmountLabel.text = " "
        
        tipAmountLabel.text = " "
        
        totalAmountLabel.text = " "
        
        nameOutlet.text = " "
        
        billAmountOutlet.text = " "
        
        tipPercentageOutlet.text = " "
        
        
    }
    
}


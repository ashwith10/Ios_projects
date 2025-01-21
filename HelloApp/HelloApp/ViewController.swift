//
//  ViewController.swift
//  HelloApp
//
//  Created by Ashwith Sai Anishetty on 1/21/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Output: UILabel!
    
    @IBOutlet weak var InputOL: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitButtonClicked(_ sender: Any) {
        //Read the text field data or user input
        //and assign it to a variable called name.
        var name = InputOL.text!
        
        //display the outpur in ("Hello,\(name)!")
        Output.text = "Hello,\(name)!"
    }
    
}


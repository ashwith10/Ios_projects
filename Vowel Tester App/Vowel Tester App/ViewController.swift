//
//  ViewController.swift
//  Vowel Tester App
//
//  Created by Ashwith Sai Anishetty on 1/28/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    

    @IBOutlet weak var outputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: UIButton) {
        var enteredtext = inputOL.text!
        if(enteredtext.contains("a") ||
           enteredtext.contains("e") ||
           enteredtext.contains("i")) ||
            enteredtext.contains("o") ||
            enteredtext.contains("u"){
            outputOL.text = "The word contains a vowel"
        }
        else{
            outputOL.text = "The word does not contain a vowel"
        }
    }
    
}


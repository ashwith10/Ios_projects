//
//  ViewController.swift
//  GoodBye App
//
//  Created by Ashwith Sai Anishetty on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var input1: UITextField!
    
    
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: Any) {
        var name1 = input1.text!
        var name2 = input2.text!
        output.text = "Goodbye \(name1) \(name2)!"
    }
    
}


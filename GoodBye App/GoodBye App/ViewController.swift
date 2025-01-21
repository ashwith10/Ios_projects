//
//  ViewController.swift
//  GoodBye App
//
//  Created by Ashwith Sai Anishetty on 1/21/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputOl: UITextField!
    @IBOutlet weak var Output: UITextField!
    
    @IBOutlet weak var Final: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func SubmitClicked(_ sender: UIButton) {
        var name = InputOl.text!
        var name1 =  Output.text!
        Output.text = "Goodbye \(name)!"
        
        Final.text = "Goodbye \(name)\(name1)!"
        
    }
    
}


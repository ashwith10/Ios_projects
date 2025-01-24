//
//  ViewController.swift
//  Voter Elgibility App
//
//  Created by Ashwith Sai Anishetty on 1/23/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    @IBOutlet weak var imagesview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func eligibilityBtn(_ sender: Any) {
        var age:Int = Int(inputOL.text!)!
        
        if age >= 18 {
            outputOL.text = "You are eligible to vote"
            imagesview.image = UIImage(named: "yes")
        }
        else {
            outputOL.text = "You are not eligible to vote"
            imagesview.image = UIImage(named: "No")
        }
        
        
        
    }
    
}


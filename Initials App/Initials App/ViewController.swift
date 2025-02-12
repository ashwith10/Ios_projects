//
//  ViewController.swift
//  Initials App
//
//  Created by Ashwith Sai Anishetty on 1/30/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    @IBOutlet weak var input1OL: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: UIButton) {
        //read the fname store it in var fname
        var fname = inputOL.text!
        //read the lname store it in var lname
        var lname = input1OL.text!
        //we need to get frst letter of fname and lname
        var firstinitial = fname.prefix(1).uppercased()
        var lastinitial = lname.prefix(1).uppercased()
        //dispaly the output
        outputOL.text = "your initials are:\(firstinitial)\(lastinitial)."
        
        
        
    }
    
}


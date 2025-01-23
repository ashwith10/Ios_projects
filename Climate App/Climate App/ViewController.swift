//
//  ViewController.swift
//  Climate App
//
//  Created by Ashwith Sai Anishetty on 1/23/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var outputOL: UILabel!

    
    @IBOutlet weak var inputOL: UITextField!
  
    
    
    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: UIButton) {
        //read the temperature
        var temp = inputOL.text!
        //convert string to int/double
        var temperature = Int(temp)!
        //check whether it is cold or hot.
        if (temperature > 60){
            imageview.image = UIImage(named: "hot")
            outputOL.text="It is Hot outside.🥵"
        }
        
        else{
            imageview.image = UIImage(named: "cold 1")
            outputOL.text="It is cold outside.🥶"
            
        }
        //temp>60(hot) otherwise, cold.Display the appropriate image.
    }
    
}


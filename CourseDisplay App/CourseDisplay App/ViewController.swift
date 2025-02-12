//
//  ViewController.swift
//  CourseDisplay App
//
//  Created by Ashwith Sai Anishetty on 2/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var crsNumOL: UILabel!
    
    @IBOutlet weak var crsTitleOL: UILabel!
    
    
    @IBOutlet weak var semOfferedOL: UILabel!
    
    @IBOutlet weak var prevBtnOL: UIButton!
    
    @IBOutlet weak var nextBtnOL: UIButton!
    
    var imageIndex = 0
    
    let courses = [["img01", "44555", "Network Security", "Fall 2024"],
    ["img02", "44666", "Mobile Computing", "Spring 2025"],
    ["img03", "44777", "Data Structures", "Fall 2024"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //update the course details(image,crsnum,title,semofffered) with the first element in array.
        updateCourseDetails(imageIndex)
        
        //previous button is disabled
        prevBtnOL.isEnabled = false
        
        
    //next buttton is enabled
        nextBtnOL.isEnabled = true
        
        
    }
    
    @IBAction func prevBtnClick(_ sender: UIButton) {
        //decrement the imageIndex
        imageIndex -= 1
        
        //update the course details
        updateCourseDetails(imageIndex)
        
        //next button should be enabled
        nextBtnOL.isEnabled = true
        
        //if the imageIndex is 0,the previous button must be disabled
        if (imageIndex == 0){
            prevBtnOL.isEnabled = false
        }
        
        
    }
    
    @IBAction func nextBtnClick(_ sender: UIButton) {
        //increment imageIndex
        imageIndex += 1
        
        //update the course details
        updateCourseDetails(imageIndex)
        
        //check if the element is at end of an array,next button should be disabled.
        if(imageIndex == courses.count-1){
            nextBtnOL.isEnabled = false
        }
    }
    
        func updateCourseDetails (_ imageIndex: Int) {
            imageViewOL .image = UIImage(named: courses[imageIndex][0])
            crsNumOL.text = courses[imageIndex][1]
            crsTitleOL.text = courses[imageIndex][2]
            semOfferedOL.text = courses[imageIndex][3]
            //previous button should be enabled
            prevBtnOL.isEnabled = true
            
        
        
    }
    

}


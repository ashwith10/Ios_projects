//
//  ViewController.swift
//  Word Guess App
//
//  Created by Ashwith Sai Anishetty on 2/13/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayOL: UILabel!
    @IBOutlet weak var hintOL: UILabel!
    @IBOutlet weak var inputOL: UITextField!
    @IBOutlet weak var checkOL: UIButton!
    @IBOutlet weak var messageOL: UILabel!
    @IBOutlet weak var playagainOL: UIButton!
    
    // Initializing an array with words and hints
    var words = [
        ["AJAYBANDI", "iOS Professor"],
        ["NORTHWEST", "Our University"],
        ["LIBRARY", "Study Space"],
        ["JAVA", "Programming Language"]
    ]
    
    var count = 0
    var word = ""
    var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Disable the check button initially
        checkOL.isEnabled = false
        
        // Get the first word from the array
        word = words[count][0]
        displayOL.text = ""
        
        // Populate the display label with the underscores
        updateUnderscores()
        
        // Get the first hint from the array
        hintOL.text = "Hint: " + words[count][1]
        
        // Clear the status label initially
        messageOL.text = ""
    }
    
    @IBAction func checkBtnClick(_ sender: UIButton) {
        // Get the text from the input text field
        var letter = inputOL.text!.trimmingCharacters(in: .whitespaces)
        
        // Ensure the letter is not empty
        if letter.isEmpty { return }
        
        // Add the guessed letter to the guessed letters string
        lettersGuessed += letter
        var revealedWord = ""
        
        // Reveal the word based on guessed letters
        for l in word {
            if lettersGuessed.contains(l) {
                revealedWord += "\(l)"
            } else {
                revealedWord += "_ "
            }
        }
        
        // Update the display label
        displayOL.text = revealedWord
        inputOL.text = ""  // Clear the text field
        
        // Check if the word is fully guessed
        if !displayOL.text!.contains("_") {
            playagainOL.isHidden = false
            checkOL.isEnabled = false
            messageOL.text = "Congratulations! You've guessed the word!"
        }
    }
    
    @IBAction func playagainBtnClick(_ sender: UIButton) {
        // Hide the play again button initially
        playagainOL.isHidden = true
        
        // Clear the guessed letters
        lettersGuessed = ""
        
        // Increment the word count to fetch the next word
        count += 1
        
        // If count reaches the end of the array (all the words are guessed), print "Congratulations!"
        if count == words.count {
            messageOL.text = "Congratulations! You are done with the game!"
            
            // Clear the labels
            displayOL.text = ""
            hintOL.text = ""
        } else {
            // Fetch the next word and hint
            word = words[count][0]
            hintOL.text = "Hint: " + words[count][1]
            
            // Enable the check button for the next round
            checkOL.isEnabled = true
            
            // Reset the display label and update underscores
            displayOL.text = ""
            updateUnderscores()
        }
    }
    
    @IBAction func letterEntered(_ sender: UITextField) {
        // Read the data from the text field
        var textEntered = inputOL.text!.trimmingCharacters(in: .whitespaces)
        
        // Consider only the last character entered
        textEntered = String(textEntered.last ?? " ")
        inputOL.text = textEntered
        
        // Enable or disable the check button based on the text field input
        if textEntered.isEmpty {
            checkOL.isEnabled = false
        } else {
            checkOL.isEnabled = true
        }
    }
    
    func updateUnderscores() {
        // Reset display text before updating underscores
        displayOL.text = ""
        
        // Add underscores based on the word's length
        for _ in word {
            displayOL.text! += "_ "
        }
    }
}

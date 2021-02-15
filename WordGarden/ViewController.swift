//
//  ViewController.swift
//  WordGarden
//
//  Created by Brishti Saha on 2/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsInGameLabel: UILabel!
    
    @IBOutlet weak var wordBeingRevealedLabel: UILabel!
    @IBOutlet weak var guessedLetterTextField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessedLetterTextField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    func updateUIAfterGuess(){ //dismiss keyboard and clears
        guessedLetterTextField.resignFirstResponder()
        guessedLetterTextField.text = ""
        guessLetterButton.isEnabled = false
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        var text = guessedLetterTextField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
        if let lastChar = text.last {
            text = String(lastChar)
            print(text)
        } else {
            text = ""
        }
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAfterGuess()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}


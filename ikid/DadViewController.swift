//
//  DadViewController.swift
//  ikid
//
//  Created by Sachin Dhami on 4/29/24.
//

import UIKit

class DadViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var jokeLabel: UILabel!
    let joke = "Why are bicycles always exhausted?"
    let answer = "Cause they're two tired!"
    var nextButtonPressed = true
    var isText = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = joke
        nextButton.setTitle("Next", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        let transitionOptions: UIView.AnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        UIView.transition(with: jokeLabel, duration: 0.5, options: transitionOptions, animations: {
            self.jokeLabel.text = self.isText ? self.answer : self.joke
        }, completion: nil)
        isText = !isText
        let updateButton = nextButtonPressed ? "Reset" : "Next"
        nextButton.setTitle(updateButton, for: .normal)
        nextButtonPressed = !nextButtonPressed
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

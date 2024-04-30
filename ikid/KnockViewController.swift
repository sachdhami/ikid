//
//  KnockViewController.swift
//  ikid
//
//  Created by Sachin Dhami on 4/29/24.
//

import UIKit

class KnockViewController: UIViewController {
    var index = 0
    let knockknock = ["Knock Knock", "Who's there?", "Yoda Lady", "Yoda Lady who?", "Yodelayheehoo!"]
    
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var jokeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = knockknock[index]

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        index = (index + 1) % knockknock.count
        jokeLabel.text = knockknock[index]
        UIView.transition(with: jokeLabel, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
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

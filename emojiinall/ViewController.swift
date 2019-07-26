//
//  ViewController.swift
//  emojiinall
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let emojis = [ "😖" : "nervous", "😹": "sad cat" ]
    let customMessages = [ "nervous": ["take a deep breath", "it's ok we all get nervous","don't pay attention to the other people in the room"], "sad cat":[" RELAX! it's ok", "try to think of something happy", "play with a friend / pet"] ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let number = Int.random(in: 0 ... 2)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        
        let alertController = UIAlertController (title:" help please", message: emojiMessage,
            preferredStyle:UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}



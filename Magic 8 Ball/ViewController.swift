//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by jaser.akuly on 1/13/19.
//  Copyright © 2019 JAkuly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5",]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askButton.layer.cornerRadius = 10
        askButton.clipsToBounds = true
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}


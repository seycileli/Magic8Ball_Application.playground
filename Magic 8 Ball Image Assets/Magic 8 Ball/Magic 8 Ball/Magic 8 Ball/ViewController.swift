//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by User on 1/16/19.
//  Copyright © 2019 Sey Cileli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magicBall: UIImageView!
    
    let magicBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomMagicBallAwr: Int = 0
    //Awr means answer.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateMagicBall()
        
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateMagicBall()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagicBall()
    }
    
    func updateMagicBall() {
        
        randomMagicBallAwr = Int.random(in: 0 ... 4)
        
        print(randomMagicBallAwr)
        
        magicBall.image = UIImage (named: magicBallArray [randomMagicBallAwr])
        
    }
    
}


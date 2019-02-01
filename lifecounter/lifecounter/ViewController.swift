//
//  ViewController.swift
//  lifecounter
//
//  Created by Phoebe Hu on 1/31/19.
//  Copyright © 2019 Phoebe Hu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var p1counter : Int = 20;
    var p2counter : Int = 20;
    var p3counter : Int = 20;
    var p4counter : Int = 20;
    
    @IBOutlet weak var p1score: UILabel!
    @IBOutlet weak var p2score: UILabel!
    @IBOutlet weak var p3score: UILabel!
    @IBOutlet weak var p4score: UILabel!
    
    @IBOutlet weak var message: UILabel!
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if sender.tag < 10 && p1counter > 0 {
            if sender.tag == 1 { p1counter += 1 }
            if sender.tag == 2 { p1counter -= 1 }
            if sender.tag == 3 { p1counter += 5 }
            if sender.tag == 4 { p1counter -= 5 }
            if p1counter <= 0 { message.text = "Player 1 LOSES!" }
            let s = "P1: " + String(p1counter)
            p1score.text = s
        } else if sender.tag < 20 && p2counter > 0 {
            if sender.tag == 11 { p2counter += 1 }
            if sender.tag == 12 { p2counter -= 1 }
            if sender.tag == 13 { p2counter += 5 }
            if sender.tag == 14 { p2counter -= 5 }
            if p2counter <= 0 { message.text = "Player 2 LOSES!" }
             let s = "P2: " + String(p2counter)
            p2score.text = s
        } else if sender.tag < 30 && p3counter > 0 {
            if sender.tag == 21 { p3counter += 1 }
            if sender.tag == 22 { p3counter -= 1 }
            if sender.tag == 23 { p3counter += 5 }
            if sender.tag == 24 { p3counter -= 5 }
            if p3counter <= 0 { message.text = "Player 3 LOSES!" }
             let s = "P3: " + String(p3counter)
            p3score.text = s
        } else if sender.tag > 30 && p4counter > 0  {
            if sender.tag == 31 { p4counter += 1 }
            if sender.tag == 32 { p4counter -= 1 }
            if sender.tag == 33 { p4counter += 5 }
            if sender.tag == 34 { p4counter -= 5 }
            if p4counter <= 0 { message.text = "Player 4 LOSES!" }
             let s = "P4: " + String(p4counter)
            p4score.text = s
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


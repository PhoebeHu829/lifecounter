//
//  ViewController.swift
//  lifecounter2
//
//  Created by Phoebe Hu on 2/3/19.
//  Copyright © 2019 Phoebe Hu. All rights reserved.
//

import UIKit

var history : [String] = []
class ViewController: UIViewController {
    
    var numP = 4
    var p1counter : Int = 20;
    var p2counter : Int = 20;
    var p3counter : Int = 20;
    var p4counter : Int = 20;
    var p5counter : Int = 20;
    var p6counter : Int = 20;
    var p7counter : Int = 20;
    var p8counter : Int = 20;
    
    
    
    @IBOutlet weak var p1info: UILabel!
    @IBOutlet weak var p2info: UILabel!
    @IBOutlet weak var p3info: UILabel!
    @IBOutlet weak var p4info: UILabel!
    @IBOutlet weak var p5info: UILabel!
    @IBOutlet weak var p6info: UILabel!
    @IBOutlet weak var p7info: UILabel!
    @IBOutlet weak var p8info: UILabel!
    
    
    
    @IBOutlet weak var player5: UIView!
    @IBOutlet weak var player6: UIView!
    @IBOutlet weak var player7: UIView!
    @IBOutlet weak var player8: UIView!
    
    @IBOutlet weak var addButton: UIButton!
    
    
    
    @IBAction func addPlayer(_ sender: UIButton) {
        numP = numP + 1
        switch numP {
        case 5:
            player5.isHidden = false
            history.append("Player 5 join!")
        case 6:
            player6.isHidden = false
            history.append("Player 6 join!")
        case 7:
            player7.isHidden = false
            history.append("Player 7 join!")
        case 8:
            player8.isHidden = false
            history.append("Player 8 join!")
            sender.isEnabled = false
        default:
            sender.isEnabled = false
            
        }
        
    }
    
    
    @IBAction func playGame(_ sender: UIButton) {
        addButton.isEnabled = false
        if sender.tag < 10 && p1counter > 0 {
            if sender.tag == 1 { p1counter += 1 }
            if sender.tag == 2 { p1counter -= 1 }
            if sender.tag == 3 { p1counter += 5 }
            if sender.tag == 4 { p1counter -= 5 }
            if p1counter <= 0 {  history.append("Player 1 Loses!") }
           
            let s = "P1: " + String(p1counter)
            p1info.text = s
            if sender.tag == 1 || sender.tag == 3 {
                 history.append("Player 1 gain  \(p1counter)  points")
            } else {
                 history.append("Player 1 lose  \(p1counter)  points")
            }
        
           
        } else if sender.tag < 20 && p2counter > 0 {
            if sender.tag == 11 { p2counter += 1 }
            if sender.tag == 12 { p2counter -= 1 }
            if sender.tag == 13 { p2counter += 5 }
            if sender.tag == 14 { p2counter -= 5 }
            if p2counter <= 0 {  history.append("Player 2 Loses!") }
           
            let s = "P2: " + String(p2counter)
            p2info.text = s
            if sender.tag == 11 || sender.tag == 13 {
                history.append("Player 2 gain  \(p2counter)  points")
            } else {
                history.append("Player 2 lose  \(p2counter)  points")
            }
        } else if sender.tag < 30 && p3counter > 0 {
            if sender.tag == 21 { p3counter += 1 }
            if sender.tag == 22 { p3counter -= 1 }
            if sender.tag == 23 { p3counter += 5 }
            if sender.tag == 24 { p3counter -= 5 }
            if p3counter <= 0 {  history.append("Player 3 Loses!") }
           
            let s = "P3: " + String(p3counter)
             p3info.text = s
            if sender.tag == 21 || sender.tag == 23 {
                history.append("Player 3 gain  \(p3counter)  points")
            } else {
                history.append("Player 3 lose  \(p3counter)  points")
            }
            
        } else if sender.tag < 40 && p4counter > 0  {
            if sender.tag == 31 { p4counter += 1 }
            if sender.tag == 32 { p4counter -= 1 }
            if sender.tag == 33 { p4counter += 5 }
            if sender.tag == 34 { p4counter -= 5 }
             if p4counter <= 0 {  history.append("Player 4 Loses!") }
           
            let s = "P4: " + String(p4counter)
             p4info.text = s
            if sender.tag == 31 || sender.tag == 33 {
                history.append("Player 4 gain  \(p4counter)  points")
            } else {
                history.append("Player 4 lose  \(p4counter)  points")
            }
        } else if sender.tag < 50 && p5counter > 0  {
            if sender.tag == 41 { p5counter += 1 }
            if sender.tag == 42 { p5counter -= 1 }
            if sender.tag == 43 { p5counter += 5 }
            if sender.tag == 44 { p5counter -= 5 }
             if p5counter <= 0 {  history.append("Player 5 Loses!") }
            
            let s = "P5: " + String(p5counter)
            p5info.text = s
            if sender.tag == 41 || sender.tag == 43 {
                history.append("Player 5 gain  \(p5counter)  points")
            } else {
                history.append("Player 5 lose  \(p5counter)  points")
            }
        } else if sender.tag < 60 && p4counter > 0  {
            if sender.tag == 51 { p6counter += 1 }
            if sender.tag == 52 { p6counter -= 1 }
            if sender.tag == 53 { p6counter += 5 }
            if sender.tag == 54 { p6counter -= 5 }
             if p6counter <= 0 {  history.append("Player 6 Loses!") }
            
            let s = "P6: " + String(p6counter)
            p6info.text = s
            if sender.tag == 51 || sender.tag == 53 {
                history.append("Player 6 gain  \(p6counter)  points")
            } else {
                history.append("Player 6 lose  \(p6counter)  points")
            }
        } else if sender.tag < 70 && p7counter > 0  {
            if sender.tag == 61 { p7counter += 1 }
            if sender.tag == 62 { p7counter -= 1 }
            if sender.tag == 63 { p7counter += 5 }
            if sender.tag == 64 { p7counter -= 5 }
             if p7counter <= 0 {  history.append("Player 7 Loses!") }
            
            let s = "P7: " + String(p7counter)
            p7info.text = s
            if sender.tag == 61 || sender.tag == 63 {
                history.append("Player 7 gain  \(p7counter)  points")
            } else {
                history.append("Player 7 lose  \(p7counter)  points")
            }
        } else if sender.tag < 80 && p8counter > 0  {
            if sender.tag == 71 { p8counter += 1 }
            if sender.tag == 72 { p8counter -= 1 }
            if sender.tag == 73 { p8counter += 5 }
            if sender.tag == 74 { p8counter -= 5 }
             if p8counter <= 0 {  history.append("Player 8 Loses!") }
            
            let s = "P8: " + String(p8counter)
            p8info.text = s
            if sender.tag == 71 || sender.tag == 73 {
                history.append("Player 8 gain  \(p8counter)  points")
            } else {
                history.append("Player 8 lose  \(p8counter)  points")
            }
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player5.isHidden = true
        player6.isHidden = true
        player7.isHidden = true
        player8.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }


}


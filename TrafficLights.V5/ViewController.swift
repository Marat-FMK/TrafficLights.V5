//
//  ViewController.swift
//  TrafficLights.V5
//
//  Created by Marat Fakhrizhanov on 23.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UIView!
    
    @IBOutlet weak var yellowLabel: UIView!
    
    @IBOutlet weak var greenLabel: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        redLabel.alpha = 0.2
        yellowLabel.alpha = 0.2
        greenLabel.alpha = 0.2
    }

    enum Colors {
               case red
               case yellow
               case green
               case allColorOff
           }

    var colorOn = Colors.red
    
    @IBAction func startButtonPressed() {
        
        switch colorOn {
            
        case .red:
          startButton.setTitle("Next", for: .normal)
            colorOn = .yellow
            redLabel.alpha = 1
        case .yellow:
            colorOn = .green
            yellowLabel.alpha = 1
            redLabel.alpha = 0.3
        case .green:
            colorOn = .allColorOff
            greenLabel.alpha = 1
            yellowLabel.alpha = 0.3
           startButton.setTitle("Stop", for: .normal)
        case .allColorOff:
            colorOn = .red
            greenLabel.alpha = 0.3
            startButton.setTitle("STARt", for: .normal)
        }
    }
    
}


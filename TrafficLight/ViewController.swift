//
//  ViewController.swift
//  TrafficLight
//
//  Created by Sergey Veresaev on 16.8.23..
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 30
        // opacity
        redLight.layer.opacity = 0.3
        yellowLight.layer.opacity = 0.3
        greenLight.layer.opacity = 0.3
        // cornerRadius
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
    }

    @IBAction func startButtonAction() {
        if redLight.layer.opacity == 0.3 &&
            yellowLight.layer.opacity == 0.3 &&
            greenLight.layer.opacity == 0.3 {
            startButton.setTitle("NEXT", for: .normal)
            
            redLight.layer.opacity = 1
        } else if redLight.layer.opacity == 1 &&
                    yellowLight.layer.opacity == 0.3 &&
                    greenLight.layer.opacity == 0.3 {
            redLight.layer.opacity = 0.3
            yellowLight.layer.opacity = 1
        } else if redLight.layer.opacity == 0.3 &&
                    yellowLight.layer.opacity == 1 &&
                    greenLight.layer.opacity == 0.3 {
            yellowLight.layer.opacity = 0.3
            greenLight.layer.opacity = 1
        } else if redLight.layer.opacity == 0.3 &&
                    yellowLight.layer.opacity == 0.3 &&
                    greenLight.layer.opacity == 1 {
            greenLight.layer.opacity = 0.3
            redLight.layer.opacity = 1
        }
    }
    
}


//
//  ViewController.swift
//  TrafficLight
//
//  Created by 19333717 on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.size.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        startButton.layer.cornerRadius = 10
        
        redView.alpha = 0.5
        yellowView.alpha = 0.5
        greenView.alpha = 0.5
    }

    @IBAction func startButtonTapped() {
        startButton.setTitle("Next", for: .normal)
        
        if redView.alpha == 1 {
            redView.alpha = 0.5
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.5
            greenView.alpha = 1
        } else if redView.alpha == 0.5 {
            greenView.alpha = 0.5
            redView.alpha = 1
        }
    }
    
}


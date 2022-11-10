//
//  ViewController.swift
//  homeWork2.2
//
//  Created by Алексей Исаев on 10.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    @IBOutlet var changeSignalButtom: UIButton!
    
    enum CurrentSignal {
        case red
        case yellow
        case green
    }
    
    private var currentSignal = CurrentSignal.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignal.alpha = 0.3
        yellowSignal.alpha = 0.3
        greenSignal.alpha = 0.3
        
        changeSignalButtom.layer.cornerRadius = 10
        redSignal.layer.cornerRadius = redSignal.frame.width / 2
        yellowSignal.layer.cornerRadius = yellowSignal.frame.width / 2
        greenSignal.layer.cornerRadius = greenSignal.frame.width / 2
    }

    @IBAction func changeSignalAction() {
        if changeSignalButtom.currentTitle == "START" {
            changeSignalButtom.setTitle("NEXT", for: .normal)
        }
        
        switch currentSignal {
        case .red:
            redSignal.alpha = 1
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 0.3
            currentSignal = .yellow
        case .yellow:
            redSignal.alpha = 0.3
            yellowSignal.alpha = 1
            greenSignal.alpha = 0.3
            currentSignal = .green
        case .green:
            redSignal.alpha = 0.3
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 1
            currentSignal = .red
        }
    }
    
}


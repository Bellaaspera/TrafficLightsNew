//
//  ViewController.swift
//  TrafficLightsNew
//
//  Created by Светлана Сенаторова on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {

//    private enum CurrentLight {
//        case red, yellow, green
//    }
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var switchingButton: UIButton!
    
    
//    private var currentLight = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
        
        switchingButton.layer.cornerRadius = 10
    }

    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    @IBAction func switchingButtonTapped() {
        let arrayOfLights: [UIView?] = [redLightView, yellowLightView, greenLightView]
        if switchingButton.currentTitle == "START" {
            switchingButton.setTitle("NEXT", for: .normal)
        }
         
//        switch currentLight {
//        case .red:
//            greenLightView.alpha = lightOff
//            redLightView.alpha = lightOn
//            currentLight = .yellow
//        case .yellow:
//            redLightView.alpha = lightOff
//            yellowLightView.alpha = lightOn
//            currentLight = .green
//        case .green:
//            yellowLightView.alpha = lightOff
//            greenLightView.alpha = lightOn
//            currentLight = .red
//        }
       
        for currentLight in arrayOfLights {
        if  redLightView.alpha == lightOff {
            currentLight?.alpha = lightOn
            greenLightView.alpha = lightOff
           
        } else if yellowLightView.alpha == lightOff {
            currentLight?.alpha = lightOn
            redLightView.alpha = lightOff
            
        } else if currentLight?.alpha == lightOff {
            currentLight?.alpha = lightOn
            yellowLightView.alpha = lightOff
            
        }
        }
        
    }
}

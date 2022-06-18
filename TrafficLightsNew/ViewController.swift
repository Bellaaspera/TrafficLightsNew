//
//  ViewController.swift
//  TrafficLightsNew
//
//  Created by Светлана Сенаторова on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redLightView: UIView!
    
    @IBOutlet weak var yellowLightView: UIView!
    
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var switchingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        switchingButton.layer.cornerRadius = 10
        redLightView.layer.cornerRadius = 101
        yellowLightView.layer.cornerRadius = 101
        greenLightView.layer.cornerRadius = 101
    }

    @IBAction func switchingButtonTapped() {
    }
    
}


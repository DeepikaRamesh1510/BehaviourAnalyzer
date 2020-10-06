//
//  ViewController.swift
//  BehaviourAnalyzer
//
//  Created by DeepikaRamesh1510 on 10/01/2020.
//  Copyright (c) 2020 DeepikaRamesh1510. All rights reserved.
//

import UIKit
import BehaviourAnalyzer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: Any) {
        AnalyticsLogger.trackEvent(ViewControllerEvents.buttonTap)
    }
    
}

enum ViewControllerEvents: AnalyticsEvent {
    case buttonTap
    
    var name: String {
        switch self {
        case .buttonTap:
            return "Button_Tap"
        }
    }
    
    var parameters: AnalyticsParameters {
        switch self {
        default:
            return [:]
        }
    }
    
    var userProperties: AnalyticsUserProperties {
        switch self {
        default:
            return [:]
        }
    }
}

//
//  ViewController.swift
//  Rotation Test
//
//  Created by John on 10/19/15.
//  Copyright © 2015 CameraFlock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var northView: UIView!
    @IBOutlet weak var blueBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        northView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func updateViewConstraints() {
        //northView.removeConstraints(northView.constraints)
        //northView.bounds.size = CGSizeMake(25, 25)
        //northView.frame.size = CGSizeMake(25, 25)
        
        switch UIDevice.currentDevice().orientation {
        case .LandscapeLeft:
            northView.rightAnchor.constraintEqualToAnchor(blueBackground.rightAnchor, constant: 20)
            northView.centerYAnchor.constraintEqualToAnchor(blueBackground.centerYAnchor)
        case .LandscapeRight:
            northView.leftAnchor.constraintEqualToAnchor(blueBackground.leftAnchor, constant: 20)
            northView.centerYAnchor.constraintEqualToAnchor(blueBackground.centerYAnchor)
        case .PortraitUpsideDown:
            northView.bottomAnchor.constraintEqualToAnchor(blueBackground.bottomAnchor, constant: 20)
            northView.centerXAnchor.constraintEqualToAnchor(blueBackground.centerXAnchor)
        default:
            northView.topAnchor.constraintEqualToAnchor(blueBackground.topAnchor, constant: 20)
            northView.centerXAnchor.constraintEqualToAnchor(blueBackground.centerXAnchor)
        }
        super.updateViewConstraints()
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
}


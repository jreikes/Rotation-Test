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
    @IBOutlet weak var northLayoutToMargin: NSLayoutConstraint!
    @IBOutlet weak var northLayoutCenter: NSLayoutConstraint!
    
    override func viewDidLoad() {
        //northView.translatesAutoresizingMaskIntoConstraints = false
        //blueBackground.translatesAutoresizingMaskIntoConstraints = false
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func updateViewConstraints() {

        self.view.removeConstraints([northLayoutToMargin, northLayoutCenter])
        
        switch UIDevice.currentDevice().orientation {
        case .LandscapeLeft:
            northLayoutToMargin = northView.trailingAnchor.constraintEqualToAnchor(blueBackground.trailingAnchor, constant: 20)
            northLayoutCenter = northView.centerYAnchor.constraintEqualToAnchor(blueBackground.centerYAnchor)
        case .LandscapeRight:
            northLayoutToMargin = northView.leadingAnchor.constraintEqualToAnchor(blueBackground.leadingAnchor, constant: 20)
            northLayoutCenter = northView.centerYAnchor.constraintEqualToAnchor(blueBackground.centerYAnchor)
        case .PortraitUpsideDown:
            northLayoutToMargin = northView.bottomAnchor.constraintEqualToAnchor(blueBackground.bottomAnchor, constant: 20)
            northLayoutCenter = northView.centerXAnchor.constraintEqualToAnchor(blueBackground.centerXAnchor)
        default:
            northLayoutToMargin = northView.topAnchor.constraintEqualToAnchor(blueBackground.topAnchor, constant: 20)
            northLayoutCenter = northView.centerXAnchor.constraintEqualToAnchor(blueBackground.centerXAnchor)
        }
        
        self.view.addConstraints([northLayoutToMargin, northLayoutCenter])
        
        super.updateViewConstraints()
    }
    
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
}


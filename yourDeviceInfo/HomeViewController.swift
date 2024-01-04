//
//  ViewController.swift
//  yourDeviceInfo
//
//  Created by 五十嵐伸雄 on 2024/01/04.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    @IBOutlet var backgroundView: GradientView!
    @IBOutlet weak var glassEffectView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        glassEffectView.layer.shadowColor = UIColor.black.cgColor
        glassEffectView.layer.shadowOpacity = 0.3
        glassEffectView.layer.shadowOffset = CGSize(width: 5, height: 5)
        glassEffectView.layer.shadowRadius = 5
        glassEffectView.layer.cornerRadius = 15
        visualEffectView.layer.cornerRadius = 15
        visualEffectView.layer.borderColor = UIColor.white.cgColor
        visualEffectView.layer.borderWidth = 1
    }
}


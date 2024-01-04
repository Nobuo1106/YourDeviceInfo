//
//  Gradient.swift
//  yourDeviceInfo
//
//  Created by 五十嵐伸雄 on 2024/01/04.
//

import Foundation
import UIKit

@IBDesignable
final class GradientView: UIView {

    @IBInspectable var Color1: UIColor = UIColor.orange
    @IBInspectable var Color2: UIColor = UIColor.red

    @IBInspectable var Position1: CGPoint = CGPoint.init(x: 0.5, y: 0)
    @IBInspectable var Position2: CGPoint = CGPoint.init(x: 0.5, y: 1)

    override func draw(_ rect: CGRect) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds

        let color1 = Color1.cgColor
        let color2 = Color2.cgColor

        gradientLayer.colors = [color1, color2]
        gradientLayer.startPoint = Position1
        gradientLayer.endPoint = Position2

        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

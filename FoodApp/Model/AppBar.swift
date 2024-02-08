//
//  AppBar.swift
//  FoodApp
//
//  Created by Akash Belekar on 07/02/24.
//

import UIKit

@IBDesignable
class AppTabBar: UITabBar {
    
    private var shapeLayer: CALayer?
  
    
    override func draw(_ rect: CGRect) {
       // self.addShape()
       self.createPath()
    }
    
//    private func addShape() {
//        let shapeLayer = CAShapeLayer()
//        shapeLayer.path = createPath()
//
//    }
    
    func createPath() -> CGPath {
       
        let path = UIBezierPath()
        let centerWidth = self.frame.width
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: (centerWidth), y: 0))
        path.close()
        return path.cgPath
    }
}

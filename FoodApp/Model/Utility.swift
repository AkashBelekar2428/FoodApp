//
//  Utility.swift
//  FoodApp
//
//  Created by Akash Belekar on 07/02/24.
//

import UIKit

class Utility{
    
    static let shared = Utility()
    
    func addTopView(viewName:UIView){
        let addTopView = TopViewController(frame: CGRect(x: 0, y: 0, width: viewName.frame.width, height: viewName.frame.height))
        viewName.addSubview(addTopView)
    }
}

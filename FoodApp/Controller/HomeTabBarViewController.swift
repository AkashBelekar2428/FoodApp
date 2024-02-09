//
//  HomeViewController.swift
//  FoodApp
//
//  Created by Akash Belekar on 06/02/24.
//

import UIKit

class HomeTabBarViewController : UIViewController{
    @IBOutlet weak var topView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Utility.shared.addTopView(viewName: topView)
        
    }
    
}

//
//  ListTabBarViewController.swift
//  FoodApp
//
//  Created by Akash Belekar on 06/02/24.
//

import UIKit


class ListTabBarViewController : UIViewController{
    @IBOutlet weak var topView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Utility.addTopView(viewName: topView)
    }
}

//
//  UserViewController.swift
//  FoodApp
//
//  Created by Akash Belekar on 06/02/24.
//

import UIKit

class UserTabBarViewController : UIViewController,YourViewControllerType {
   
    
    @IBOutlet weak var topView:UIView!
    
    var topViewController: TopViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        Utility.addTopView(viewName: topView)
        
       
    }
    func updateLabels() {
        topViewController?.lblTabBarName.text = "User"
    }
  
 
}

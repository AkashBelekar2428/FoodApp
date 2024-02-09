//
//  UserViewController.swift
//  FoodApp
//
//  Created by Akash Belekar on 06/02/24.
//

import UIKit

class UserTabBarViewController : UIViewController {
   
    
    @IBOutlet weak var topView:UIView!
    
    var topViewController: TopViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        Utility.shared.addTopView(viewName: topView)
        
       
    }
    func updateLabels() {
        topViewController?.lblTabBarName.text = "User"
    }
  
 
}

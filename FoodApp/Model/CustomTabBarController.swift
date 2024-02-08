//
//  CustomTabBarController.swift
//  FoodApp
//
//  Created by Akash Belekar on 07/02/24.
//

import UIKit

protocol YourViewControllerType: AnyObject {
    func updateLabels()
}


class CustomTabBarController:UITabBarController, UITabBarControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let index = tabBarController.viewControllers?.firstIndex(of: viewController) {
            
           updateLabelsForTab(index)
        }
    }
    // Method to update labels for a specific tab
      func updateLabelsForTab(_ tabIndex: Int) {
          // Get the view controller associated with the tab index
          if let selectedViewController = viewControllers?[tabIndex] as? YourViewControllerType {
              // Call a method in the view controller to update labels
              selectedViewController.updateLabels()
          }
      }
}

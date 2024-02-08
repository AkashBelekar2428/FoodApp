//
//  QRCodeTabViewController.swift
//  FoodApp
//
//  Created by Akash Belekar on 06/02/24.
//

import UIKit


class QRCodeTabBarViewController : UITabBarController, UITabBarControllerDelegate{
    
    required init(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)!
     }
    
//    var tabBarItem : UITabBarItem?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMiddleButton()
    }
    // TabBarButton – Setup Middle Button
        func setupMiddleButton() {
            
            let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
            
            var menuButtonFrame = menuButton.frame
            menuButtonFrame.origin.y = (view.bounds.height - 35) - (menuButtonFrame.height )
            menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
            menuButton.frame = menuButtonFrame
            
            menuButton.setImage(UIImage(systemName: "qrcode"), for: .normal)
            menuButton.imageView?.tintColor = UIColor.white
            menuButton.backgroundColor = UIColor.black
            menuButton.layer.borderColor = UIColor.white.cgColor
            menuButton.layer.borderWidth = 0.5
            menuButton.layer.cornerRadius = menuButtonFrame.height/2
            
            self.tabBarItem?.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
            self.tabBarItem?.title = nil
            view.addSubview(menuButton)
            
            
           
            menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
            
            view.layoutIfNeeded()
        }
        
        // Menu Button Touch Action
        @objc func menuButtonAction(sender: UIButton) {
            self.selectedIndex = 2   //to select the middle tab. use "1" if you have only 3 tabs.
            print("MenuButton")
        }
    
}

//extension QRCodeTabBarViewController: UITabBar{
//    
//}

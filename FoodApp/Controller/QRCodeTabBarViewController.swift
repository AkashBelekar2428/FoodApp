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
        setupQRButton()
    }
    // TabBarButton – Setup Middle Button
        func setupQRButton() {
            
            let QRButton = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
            
            var QRButtonFrame = QRButton.frame
            QRButtonFrame.origin.y = (view.bounds.height - 30) - (QRButtonFrame.height )
            QRButtonFrame.origin.x = view.bounds.width/2 - QRButtonFrame.size.width/2
            QRButton.frame = QRButtonFrame
            
            QRButton.setImage(UIImage(systemName: "qrcode"), for: .normal)
            QRButton.imageView?.tintColor = UIColor.white
            QRButton.backgroundColor = UIColor.black
            QRButton.layer.borderColor = UIColor.white.cgColor
            QRButton.layer.borderWidth = 0.5
            QRButton.layer.cornerRadius = QRButtonFrame.height/2
            
            self.tabBarItem?.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
            self.tabBarItem?.title = nil
            view.addSubview(QRButton)
            
            
           
            QRButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
            
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

//
//  QRCodeTabViewController.swift
//  FoodApp
//
//  Created by Akash Belekar on 06/02/24.
//

import UIKit


class QRCodeTabBarViewController : UITabBarController, UITabBarControllerDelegate{
    
//    required init(coder aDecoder: NSCoder) {
//         super.init(coder: aDecoder)!
//     }
    
    let QRButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupQRButton()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews----- \(view.bounds.width)")
       // setupQRButton()
       
       
    }
        func setupQRButton() {
            view.layoutIfNeeded()
//            let buttonHeight: CGFloat = 50
//            
//            // Calculate the center of the tab bar
//                   let tabBarCenter = CGPoint(x: tabBar.frame.size.width / 2, y: tabBar.frame.size.height / 2)
//
//                   // Set the frame for the button to position it at the center of the tab bar
//                   let buttonSize = CGSize(width: 80, height: 80)
//            QRButton.frame = CGRect(origin: CGPoint(x: tabBarCenter.x - buttonSize.width / 2, y: tabBarCenter.y - buttonSize.height / 2), size: buttonSize)
//
//                   // Make the button rounded
//            QRButton.layer.cornerRadius = buttonSize.height / 2
            
            
            
            QRButton.frame = CGRect.init(x: view.bounds.width/2.5, y: tabBar.frame.minY , width: 80, height: 80)
            QRButton.layer.cornerRadius = 40
//            
//            
            QRButton.setImage(UIImage(systemName: "qrcode"), for: .normal)
            QRButton.imageView?.tintColor = UIColor.white
            QRButton.backgroundColor = UIColor.black
            QRButton.layer.borderColor = UIColor.white.cgColor
            QRButton.layer.borderWidth = 0.5
           
            
            
            view.addSubview(QRButton)
          //  view.bringSubviewToFront(QRButton)
            view.layoutIfNeeded()
            QRButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
            
           
        }
        
        @objc func menuButtonAction(sender: UIButton) {
            self.selectedIndex = 2   //to select the middle tab. use "1" if you have only 3 tabs.
            print("MenuButton")
        }
}


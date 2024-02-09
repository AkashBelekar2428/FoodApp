//
//  SynchronisierungViewController.swift
//  FoodApp
//
//  Created by Akash Belekar on 09/02/24.
//

import UIKit

class SynchronisierungViewController: UIViewController {
    @IBOutlet weak var topView:UIView!
    @IBOutlet weak var viewPortal:UIView!
    @IBOutlet weak var btnMyHogast : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        viewShadow()
        Utility.shared.addTopView(viewName: topView)
    }
    

    @IBAction func backBtn(){
        dismiss(animated: true)
    }
    func viewShadow(){
        
      
        viewPortal.layer.cornerRadius = 5

        // Set shadow properties
        viewPortal.layer.shadowColor = UIColor.blue.cgColor
        viewPortal.layer.shadowOpacity = 1.5
        viewPortal.layer.shadowOffset = CGSize(width: 0, height: 5)
        viewPortal.layer.shadowRadius = 10
        
        btnMyHogast.layer.cornerRadius = 5
        btnMyHogast.layer.borderWidth = 1
        btnMyHogast.layer.borderColor = UIColor.darkGray.cgColor
    }

}

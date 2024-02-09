//
//  ListTabBarViewController.swift
//  FoodApp
//
//  Created by Akash Belekar on 06/02/24.
//

import UIKit


class ListTabBarViewController : UIViewController{
    @IBOutlet weak var topView:UIView!
    @IBOutlet weak var viewBestelllisten:UIView!
    @IBOutlet weak var viewInventurlisten:UIView!
    @IBOutlet weak var viewPreisvergleichslisten:UIView!
    
    @IBOutlet weak var viewBestelllistenValue:UIView!
    @IBOutlet weak var viewInventurlistenValue:UIView!
    @IBOutlet weak var viewPreisvergleichslistenValue:UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewMethods()
        Utility.shared.addTopView(viewName: topView)
    }
    
    @IBAction func synchr(){
        print("Synch")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SynchronisierungViewController") as! SynchronisierungViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
        
    }
    
    func viewMethods(){
        viewBestelllisten.layer.cornerRadius = 2.0
        viewBestelllisten.layer.borderWidth = 1.0
        viewBestelllisten.layer.borderColor = UIColor.lightGray.cgColor
        viewBestelllistenValue.layer.cornerRadius = viewBestelllistenValue.bounds.width / 2.0
        
        viewInventurlisten.layer.cornerRadius = 2.0
        viewInventurlisten.layer.borderWidth = 1.0
        viewInventurlisten.layer.borderColor = UIColor.lightGray.cgColor
        viewInventurlistenValue.layer.cornerRadius = viewBestelllistenValue.bounds.width / 2.0
        
        viewPreisvergleichslisten.layer.cornerRadius = 2.0
        viewPreisvergleichslisten.layer.borderWidth = 1.0
        viewPreisvergleichslisten.layer.borderColor = UIColor.lightGray.cgColor
        viewPreisvergleichslistenValue.layer.cornerRadius = viewBestelllistenValue.bounds.width / 2.0
        
    }
}

//
//  TopViewController.swift
//  FoodApp
//
//  Created by Akash Belekar on 07/02/24.
//

import UIKit

class TopViewController: UIView {
    @IBOutlet weak var lblTabBarName:UILabel!
    @IBOutlet weak var lblNetworkStatus:UILabel!
    @IBOutlet weak var btnNetworkStatus:UIButton!
    

    override init(frame: CGRect) {
         super.init(frame: frame)
         commonInit()
     }

     required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         commonInit()
     }

    private func commonInit() {
    //MARK: Load the XIB
            let nib = UINib(nibName: "TopViewController", bundle: nil)
            if let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView {
                contentView.frame = bounds
                contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                addSubview(contentView)
            }
        }
    
   func updateValues(updateTabBarName:String, updateNetworkStatus:String){
        lblTabBarName.text = updateTabBarName
        lblNetworkStatus.text = updateNetworkStatus
    }
    
    }
 

    


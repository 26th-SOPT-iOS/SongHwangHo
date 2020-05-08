//
//  ViewController.swift
//  SOPT_HWork_LogIn(AutoLayout)
//
//  Created by 송황호 on 2020/04/26.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

@IBDesignable
class ViewController: UIViewController {

  
    
//    override func viewWillAppear(_ animated: Bool) {
//         navigationController?.isNavigationBarHidden = true
//              
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//         navigationController?.isNavigationBarHidden = false
//              
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        navigationController?.isNavigationBarHidden = true
               
        // Do any additional setup after loading the view.
    }


    
}



extension UIView {
    @IBInspectable
    var conerradious : CGFloat{
        get{
            return layer.cornerRadius
        }set{
            layer.cornerRadius = newValue
        }
    }
}

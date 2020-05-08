//
//  signupViewController.swift
//  SOPT_HWork_LogIn(AutoLayout)
//
//  Created by 송황호 on 2020/04/28.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class signupViewController: UIViewController {

    
//    override func viewWillAppear(_ animated: Bool) {
//          navigationController?.navigationBar.backItem?.title = ""
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//         navigationController?.isNavigationBarHidden = false
//
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     // Do any additional setup after loading the view.
    }
    @IBAction func joinToMaim(_ sender : UIButton){
        self.navigationController?.popToRootViewController(animated: true)
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

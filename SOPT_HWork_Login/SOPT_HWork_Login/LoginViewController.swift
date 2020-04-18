//
//  LoginViewController.swift
//  SOPT_HWork_Login
//
//  Created by 송황호 on 2020/04/18.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var ID : String?
    var Password : String?
    
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var passText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setText()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogOut(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func setText(){
        
        guard let ID = self.ID else {return}
        guard let Password = self.Password else {return}
        
        idText.text = ID
        passText.text = Password
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

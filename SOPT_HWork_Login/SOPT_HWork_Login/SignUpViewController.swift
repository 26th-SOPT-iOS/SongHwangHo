//
//  SignUpViewController.swift
//  SOPT_HWork_Login
//
//  Created by 송황호 on 2020/04/18.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var passText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        guard let reciveViewController = storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else {return}
    
        reciveViewController.ID = idText.text
               reciveViewController.Password = passText.text
              
        
        reciveViewController.modalPresentationStyle = .fullScreen
        self.present(reciveViewController, animated:  true, completion: {if let navController = self.navigationController {
                navController.popViewController(animated: true)
            }})
          // competion이란?? 회원가입 버튼을 누르고 나서 행동을 정의하는 클로져!
        // 그래서 completion에 pop하여 빠로 첫 화면으로 돌아 갈 수 있도록 하기
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

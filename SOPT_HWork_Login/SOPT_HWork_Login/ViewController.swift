//
//  ViewController.swift
//  SOPT_HWork_Login
//
//  Created by 송황호 on 2020/04/18.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var btnLog: UIButton!
    @IBOutlet weak var btnSign: UIButton!
    
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var pasText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLog.layer.cornerRadius = 10
        btnSign.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogIn(_ sender: Any) {
        
        if idText.text == "" || pasText.text == "" {
            let IDAlert = UIAlertController(title: "경고!", message: "ID or password를 입력 하시오", preferredStyle: UIAlertController.Style.alert)
            print("입력 하시게나~")
            
            let OK = UIAlertAction(title: "오키~", style: UIAlertAction.Style.default, handler: nil)
            
            IDAlert.addAction(OK)
            
             present(IDAlert, animated: true, completion: nil)
            
            
        }else{
            guard let reciveViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else {return}
                   
                   reciveViewController.ID = idText.text
                   reciveViewController.Password = pasText.text
                   
                   
                   reciveViewController.modalPresentationStyle = .fullScreen
                   self.present(reciveViewController, animated: true, completion: {self.idText.text = ""
                   self.pasText.text = ""})
                 
               }
            
        }
        
    
}


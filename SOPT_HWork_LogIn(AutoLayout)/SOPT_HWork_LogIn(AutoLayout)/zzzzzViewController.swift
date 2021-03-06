//
//  zzzzzViewController.swift
//  SOPT_HWork_LogIn(AutoLayout)
//
//  Created by 송황호 on 2020/05/06.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class zzzzzViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageHeight: NSLayoutConstraint!
    @IBOutlet weak var ScrollView: UIScrollView!
    
    let headerImgHeight: CGFloat = 210
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ScrollView.delegate = self
        ScrollView.contentInsetAdjustmentBehavior = .never
        // Do any additional setup after loading the view.
    }
    
    
       func scrollViewDidScroll(_ scrollView: UIScrollView) {
           let yPosition = scrollView.contentOffset.y
           print(imageHeight.constant)
           if yPosition < 0 {
               imageHeight.constant = headerImgHeight - yPosition
           }else{
            if headerImgHeight - yPosition > 105 {
                imageHeight.constant = headerImgHeight - yPosition
            } else {
                imageHeight.constant = 105
                
            }

        }
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

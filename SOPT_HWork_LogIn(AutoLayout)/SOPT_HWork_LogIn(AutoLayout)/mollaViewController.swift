//
//  mollaViewController.swift
//  SOPT_HWork_LogIn(AutoLayout)
//
//  Created by 송황호 on 2020/05/06.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class mollaViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imgLogoHeight: NSLayoutConstraint!
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
         print(yPosition)
        
        if yPosition < 0 {
            imgLogoHeight.constant = headerImgHeight - yPosition
        }
        else {
            print(headerImgHeight - yPosition)
            if headerImgHeight - yPosition > 105 {
                imgLogoHeight.constant = headerImgHeight - yPosition
            } else {
                imgLogoHeight.constant = 105
            }
        }
      }
    
}

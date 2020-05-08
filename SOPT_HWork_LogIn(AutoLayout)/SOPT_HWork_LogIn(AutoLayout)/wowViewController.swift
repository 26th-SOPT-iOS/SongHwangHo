//
//  wowViewController.swift
//  SOPT_HWork_LogIn(AutoLayout)
//
//  Created by 송황호 on 2020/05/05.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class wowViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var imgLogoHight: NSLayoutConstraint!
    @IBOutlet weak var ScrollView: UIScrollView!
    
    let headerImgHeight: CGFloat = 210      //
    let minHeaderImgHeight: CGFloat = 108
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ScrollView.delegate = self
        ScrollView.contentInsetAdjustmentBehavior = .never
        // Do any additional setup after loading the view.
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
      let yPosition = scrollView.contentOffset.y * 2
      
      if yPosition < 0 {
          imgLogoHight.constant = headerImgHeight - yPosition
      } else {
          print(headerImgHeight - yPosition)
          if headerImgHeight - yPosition > 105 {
              imgLogoHight.constant = headerImgHeight - yPosition
          } else {
              imgLogoHight.constant = 105
          }
      }
    }
    
}
//extension wowViewController: UIScrollViewDelegate {
//
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let yPosition = scrollView.contentOffset.y
//
//        if yPosition < 0.0 {   //스크롤 올릴때 때
//            // Scrolling down: Scale
//            imgLogoHight.constant = headerImgHeight - yPosition
//
//        } else {                    // 스크롤 올릴 때
//            if headerImgHeight - yPosition > 105 {
//                imgLogoHight.constant = headerImgHeight - yPosition
//            } else {
//                imgLogoHight.constant = 105
//
//            }
//
//        }
//    }
//}

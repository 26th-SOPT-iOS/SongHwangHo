//
//  realViewController.swift
//  SOPT_HWork_LogIn(AutoLayout)
//
//  Created by 송황호 on 2020/05/06.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class realViewController: UIViewController {


    @IBOutlet weak var imgLogoHight: NSLayoutConstraint!
    @IBOutlet weak var ScrollView: UIScrollView!
    
    var headerImgHeight: CGFloat = 210      //
    var minHeaderImgHeight: CGFloat = 108
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ScrollView.delegate = self
        ScrollView.contentInsetAdjustmentBehavior = .never
        // Do any additional setup after loading the view.
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

extension realViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let yPosition = scrollView.contentOffset.y
        
        if yPosition < 0.0 {   //스크롤 올릴때 때
            // Scrolling down: Scale
            imgLogoHight.constant = headerImgHeight - yPosition
            
        } else {                    // 스크롤 올릴 때
            if headerImgHeight - yPosition > 105 {
                imgLogoHight.constant = headerImgHeight - yPosition
            } else {
                imgLogoHight.constant = 105
                
            }

        }
    }
}

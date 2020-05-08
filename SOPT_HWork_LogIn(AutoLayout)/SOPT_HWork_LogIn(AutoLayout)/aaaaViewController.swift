//
//  aaaaViewController.swift
//  SOPT_HWork_LogIn(AutoLayout)
//
//  Created by 송황호 on 2020/05/04.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class aaaaViewController: UIViewController {

    @IBOutlet weak var imgViewHeightLayout: NSLayoutConstraint!
    @IBOutlet weak var parallaxImgView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var headerImgHeight: CGFloat = 210
    var minHeaderImgHeight: CGFloat = 108
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentInsetAdjustmentBehavior = .never
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

extension aaaaViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < 0.0 {
            // Scrolling down: Scale
            imgViewHeightLayout.constant = headerImgHeight - scrollView.contentOffset.y
        } else {
            // Scrolling up: Parallax
            var height = headerImgHeight - scrollView.contentOffset.y
            height = height > minHeaderImgHeight ? height : minHeaderImgHeight
            imgViewHeightLayout.constant = height
        }
    }
}

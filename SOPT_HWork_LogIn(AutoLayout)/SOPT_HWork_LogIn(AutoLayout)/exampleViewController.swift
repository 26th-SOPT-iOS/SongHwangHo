//
//  exampleViewController.swift
//  SOPT_HWork_LogIn(AutoLayout)
//
//  Created by 송황호 on 2020/05/04.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class exampleViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
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
extension UILabel {
    func underLine() {
        guard let text = self.text else {
            return
        }
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(.underlineStyle, value: 1, range: (text as NSString).range(of: text))
        
        self.attributedText = attributedString
    }
}

extension scrollViewController : UIScrollViewDelegate {
    
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



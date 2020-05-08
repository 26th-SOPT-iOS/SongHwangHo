//
//  scrollViewController.swift
//  SOPT_HWork_LogIn(AutoLayout)
//
//  Created by 송황호 on 2020/04/29.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class scrollViewController: UIViewController {

    
    @IBOutlet weak var viewTopHight: NSLayoutConstraint!
    let MaxTopHight : CGFloat = 250 + UIApplication.shared.statusBarFrame.height
    
    let MinTopHeight: CGFloat = 50 + UIApplication.shared.statusBarFrame.height
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}

extension scrollViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        //현재 스크롤의 위치 (최상단 = 0)
        let y: CGFloat = scrollView.contentOffset.y
        
        //변경될 최상단 뷰의 높이
        let ModifiedTopHeight: CGFloat = viewTopHight.constant - y
        
        // *** 변경될 높이가 최댓값을 초과함
        if(ModifiedTopHeight > MaxTopHight)
        {
            //현재 최상단뷰의 높이를 최댓값(250)으로 설정
            viewTopHight.constant = MaxTopHight
        }// *** 변경될 높이가 최솟값 미만임
        else if(ModifiedTopHeight < MinTopHeight)
        {
            //현재 최상단뷰의 높이를 최솟값(50+상태바높이)으로 설정
            viewTopHight.constant = MinTopHeight
        }// *** 변경될 높이가 최솟값(50+상태바높이)과 최댓값(250) 사이임
        else
        {
            //현재 최상단 뷰 높이를 변경함
            viewTopHight.constant = ModifiedTopHeight
            scrollView.contentOffset.y = 0
        }
    }
}

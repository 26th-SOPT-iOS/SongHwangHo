//
//  File.swift
//  SOPT_HWork_calculator
//
//  Created by 송황호 on 2020/04/26.
//  Copyright © 2020 송황호. All rights reserved.
//

import UIKit

class UIRoundPrimaryButton: UIButton{
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = self.bounds.size.height/2
        self.layer.masksToBounds = true
        
    }
}

// button.layer.cornerRadius = 0.5 * button.bounds.size.width



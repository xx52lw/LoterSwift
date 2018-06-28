//
//  LWBaseViewController.swift
//  Loter-swift
//
//  Created by 张星星 on 2018/3/30.
//  Copyright © 2018年 LW. All rights reserved.
//

import UIKit
// ================================================================================================================================
// MARK: - 基类视图控制器
class LWBaseViewController: UIViewController {

    //MARK: - 重写viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         view.backgroundColor = UIColor.colorFromHex(hex: LWAppConfigurationModel.sharedInstance().defaultControllerBgColor)
    }

}
// ================================================================================================================================

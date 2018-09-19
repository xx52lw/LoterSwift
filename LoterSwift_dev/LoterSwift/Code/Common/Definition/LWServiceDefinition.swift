//
//  LWServiceDefinition.swift
//  LoterSwift
//
//  Created by 张星星 on 2018/4/2.
//  Copyright © 2018年 LW. All rights reserved.
//

import UIKit
//================================================================================================================================
// MARK: - 网络层定义
// 请求头部

// 请求URL
let developUrl = "http://api.test.btgonline.net/customer2"
let productUrl = "https://api.customer.btghl.com"
let kUrlBase = (LWIsProduct == true ? productUrl : developUrl)


let kURLAppCommonConfig = "/app/getAppCommonConfig"  // APP系统公用内容
let kURLtest = "/app/bizclass/read/list"  // 测试



// ================================================================================================================================

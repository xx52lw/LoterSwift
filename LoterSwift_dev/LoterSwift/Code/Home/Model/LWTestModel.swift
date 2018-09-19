//
//  LWTestModel.swift
//  LoterSwift
//
//  Created by liwei on 2018/9/19.
//  Copyright © 2018年 LW. All rights reserved.
//

import UIKit
// ================================================================================================================================
// MARK: 测试模型
class LWTestModel: LWBaseModel {

    var data : [LWHomeChannelRequestInfo]?
    
}
// ================================================================================================================================
// MARK: 详细数据
class LWHomeChannelRequestInfo: LWBaseModel {
    
    
    var bizclassName : String?
    var createTime : String?
    var enable : String?
    var id : String?
    var parentBizclassId : String?
    var updateTime : String?
    
    required init() {
        
    }
}
// ================================================================================================================================

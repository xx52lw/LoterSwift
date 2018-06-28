//
//  LWConstant.swift
//  LoterSwift
//
//  Created by 张星星 on 2018/4/3.
//  Copyright © 2018年 LW. All rights reserved.
//

import UIKit

//================================================================================================================================
// MARK: - 常量定义

/// 存储系统版本号
let LWSystemVersionKey = "LWSystemVersionKey"
/// 屏幕宽度
let LWAppScreenWidth = UIScreen.main.bounds.size.width
/// 屏幕高度
let LWAppScreenHeight = UIScreen.main.bounds.size.height
/// 自定义颜色
func LWRGB( _ r : CGFloat , g : CGFloat ,b : CGFloat) -> UIColor {
    return UIColor.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0  , alpha: 1.0)
}
/// 全局默认占位图片
let LWGlobalPlaceHolderImage = UIImage.imageFromeBundleFile(fileName: "comment", imageName: "PlaceHolderImage")

/// 发送通知
func LWPOSTNotification( NotificationName notificationName : String) {
    return NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationName), object: nil, userInfo: nil)
}
/// 添加通知
func LWAddNotification(_ observer: Any, selector aSelector: Selector, NotificationName notificationName: String) {
    return NotificationCenter.default.addObserver(observer, selector: aSelector, name: NSNotification.Name(rawValue: notificationName), object: nil)
}
/// 移除通知
func LWRemoveNotification(_ observer: Any, NotificationName notificationName: String) {
    return NotificationCenter.default.removeObserver(observer, name: NSNotification.Name(rawValue: notificationName), object: nil)
}

// ================================================================================================================================

//
//  UIButton+LW.swift
//  LoterSwift
//
//  Created by liwei on 2018/8/9.
//  Copyright © 2018年 LW. All rights reserved.
//

import UIKit
// ==================================================================================================================
/// 按钮拓展方法
extension UIButton {

    /// 创建文字按钮
    class func createTitleBtn(_ titleFont : UIFont ,titleColor : UIColor, title: String?,bgColor : UIColor?,target: Any?, action: Selector) -> UIButton{
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.titleLabel?.font = titleFont
        btn.setTitleColor(titleColor, for: UIControlState.normal)
        btn.setTitle(title, for: UIControlState.normal)
        btn.backgroundColor = bgColor
        btn.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        return btn
    }
    /// 创建图片按钮
    class func createImageBtn(_ image : UIImage ,bgImage : UIImage,bgColor : UIColor?,target: Any?, action: Selector) -> UIButton{
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.setImage(image, for: UIControlState.normal)
        btn.setBackgroundImage(bgImage, for: UIControlState.normal)
        btn.backgroundColor = bgColor
        btn.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        return btn
    }
    /// 创建图片在右侧按钮
    class func createImageAtRightBtn(_ titleFont : UIFont ,titleColor : UIColor, title: String?, image : UIImage,bgColor : UIColor?,target: Any?, action: Selector) -> UIButton{
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.setImage(image, for: UIControlState.normal)
        btn.titleLabel?.font = titleFont
        btn.setTitleColor(titleColor, for: UIControlState.normal)
        btn.setTitle(title, for: UIControlState.normal)
        btn.backgroundColor = bgColor
        btn.sizeToFit()
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, -btn.imageView!.frame.size.width - 15, 0, 0)
        btn.imageEdgeInsets = UIEdgeInsetsMake(0, (btn.titleLabel?.frame.size.width)! + 5, 0, 0)
        return btn
    }
}
// ==================================================================================================================

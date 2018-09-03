//
//  LWPlazaCirclePage.swift
//  Loter-swift
//
//  Created by 张星星 on 2018/4/2.
//  Copyright © 2018年 LW. All rights reserved.
//

import UIKit

class LWPlazaCirclePage: LWBaseViewController, LWBannerViewDelegate,LWTextFieldDelegate {
    

    
    
    lazy var bannerView: LWBannerView = {
        let banner = LWBannerView()
        banner.delegate = self
        return banner
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        let btn  = UIButton.createImageAtRightBtn(<#T##titleFont: UIFont##UIFont#>, titleColor: <#T##UIColor#>, title: <#T##String?#>, image: <#T##UIImage#>, bgColor: <#T##UIColor?#>, target: <#T##Any?#>, action: <#T##Selector#>)
        
        let textField = LWTextField.createPlaceholderTextField(CGRect.init(x: 20, y: 300, width: 200, height: 20), placeholderString: "测试👍为")
        textField.delegate = self
        view.addSubview(textField)
        

        bannerView.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: 200)
        bannerView.backgroundColor = .clear
        let bannerArray = NSMutableArray()
        for index in 0..<5 {
            let m = LWBannerViewModel()
            m.index = index
            bannerArray.add(m)
        }
        bannerView.bannerArray = bannerArray as! [LWBannerViewModel]
        bannerView.showBanner()
        view.addSubview(bannerView)
        
        // Do any additional setup after loading the view.
    }

    func bannerViewClick(view: LWBannerView, selectIndex: Int) {
        
    }
    
    func textFielfChange(view: LWTextField, changeString: String) {
        print(changeString)
    }

}

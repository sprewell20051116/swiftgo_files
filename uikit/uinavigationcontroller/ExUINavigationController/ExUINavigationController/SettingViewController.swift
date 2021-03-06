//
//  SettingViewController.swift
//  ExUINavigationController
//
//  Created by joe feng on 2016/5/24.
//  Copyright © 2016年 hsin. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 底色
        self.view.backgroundColor = UIColor.blackColor()
        
        // 導覽列標題
        self.title = "Setting"
        
        // 導覽列底色
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        
        // 導覽列是否半透明
        self.navigationController?.navigationBar.translucent = false
        
        // 導覽列右邊 UIView
        let myUIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        myUIView.backgroundColor = UIColor.purpleColor()
        let rightButton = UIBarButtonItem(customView: myUIView)
        // 加到導覽列中
        self.navigationItem.rightBarButtonItem = rightButton
        
        // 建立一個按鈕
        let myButton = UIButton(frame: CGRect(x: 100, y: 250, width: 120, height: 40))
        myButton.setTitle("回前頁", forState: .Normal)
        myButton.backgroundColor = UIColor.blueColor()
        myButton.addTarget(self, action: #selector(SettingViewController.back), forControlEvents: .TouchUpInside)
        self.view.addSubview(myButton)
        
    }

    func back() {
        self.navigationController?.popViewControllerAnimated(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

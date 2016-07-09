//
//  QWSecondVC.swift
//  QWNavDemo
//
//  Created by 王权伟 on 16/7/9.
//  Copyright © 2016年 wangqw. All rights reserved.
//

import UIKit

class QWSecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "SecondVC"
        
        let backBarButtonItem = UIBarButtonItem(title: "返回", style: UIBarButtonItemStyle.Done, target: self, action: #selector(QWSecondVC.backBarButtonItem(_:)))
        self.navigationItem.leftBarButtonItem = backBarButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func backBarButtonItem(barButtonItem : UIBarButtonItem){
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}

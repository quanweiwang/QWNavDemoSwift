//
//  QWFristVC.swift
//  QWNavDemo
//
//  Created by 王权伟 on 16/7/9.
//  Copyright © 2016年 wangqw. All rights reserved.
//

import UIKit

class QWFristVC: UIViewController {

    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "FristVC"
        
        //按钮点击事件
        self.button.addTarget(self, action: #selector(QWFristVC.button(_:)), forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- 按钮点击事件
    func button(btn : UIButton){
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("QWSecondVC") as! QWSecondVC
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

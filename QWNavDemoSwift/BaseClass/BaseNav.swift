//
//  BaseNav.swift
//  QWNavDemo
//
//  Created by 王权伟 on 16/7/9.
//  Copyright © 2016年 wangqw. All rights reserved.
//

import UIKit

class BaseNav: UINavigationController,UIGestureRecognizerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.interactivePopGestureRecognizer!.delegate = self
        
        self.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        
        self.interactivePopGestureRecognizer?.enabled = false
        
        super.pushViewController(viewController, animated: animated)
    }
    
    //MARK:- UINavigationControllerDelegate
    
    func navigationController(navigationController: UINavigationController, didShowViewController viewController: UIViewController, animated: Bool) {
        
        if navigationController.viewControllers.count == 1 {
            self.interactivePopGestureRecognizer?.enabled = false
        }
        else{
            self.interactivePopGestureRecognizer?.enabled = true
        }
    }

}

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
        
        //手势Delegate
        self.interactivePopGestureRecognizer!.delegate = self
        
        //UINavigationControllerDelegate
        self.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        
        //push时关闭手势
        self.interactivePopGestureRecognizer?.enabled = false
        
        super.pushViewController(viewController, animated: animated)
    }
    
    //MARK:- UINavigationControllerDelegate
    
    func navigationController(navigationController: UINavigationController, didShowViewController viewController: UIViewController, animated: Bool) {
        
        if navigationController.viewControllers.count == 1 {
            //如果是 rootViewController 关闭手势响应
            self.interactivePopGestureRecognizer?.enabled = false
        }
        else{
            //如果不是 rootViewController 开启手势响应
            self.interactivePopGestureRecognizer?.enabled = true
        }
    }

}

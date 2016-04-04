//
//  MyNavigationViewController.swift
//  TranslucentNavigationController
//
//  Created by 彭显鹤 on 16/4/4.
//
//

import UIKit

class MyNavigationViewController: UINavigationController, UINavigationControllerDelegate,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        if respondsToSelector(Selector("interactivePopGestureRecognizer")) {
            interactivePopGestureRecognizer?.delegate = self
            delegate = self
        }
        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if viewControllers.count >= 1 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
}

//
//  FirstViewController.swift
//  TranslucentNavigationController
//
//  Created by 彭显鹤 on 16/4/4.
//
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.purpleColor()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if navigationController?.navigationBarHidden ==  false {
            navigationController?.setNavigationBarHidden(true, animated: true)
        }
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        if navigationController?.navigationBarHidden == true {
            navigationController?.setNavigationBarHidden(false, animated: true)
        }
    }
    
}

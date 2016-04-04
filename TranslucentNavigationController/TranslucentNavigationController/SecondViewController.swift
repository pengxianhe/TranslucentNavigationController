//
//  SecondViewController.swift
//  TranslucentNavigationController
//
//  Created by 彭显鹤 on 16/4/4.
//
//

import UIKit

class SecondViewController: UIViewController {
    @IBAction func back(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if navigationController?.navigationBarHidden ==  false{
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

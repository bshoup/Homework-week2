//
//  SettingsViewController.swift
//  Homework-week2
//
//  Created by Shoup, Beth M.  on 4/9/16.
//  Copyright © 2016 Shoup, Beth M. . All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate  {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 320, height: 800)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        scrollView.contentInset.top = 0
        scrollView.contentInset.bottom = 100
        scrollView.scrollIndicatorInsets.top = 0
        scrollView.scrollIndicatorInsets.bottom = 50
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    @IBAction func signOutButton(sender: AnyObject) {
         showActionSheet()
    }

    func showActionSheet() {
        let alertController = UIAlertController(title: "", message: "Are you sure you want to log out?", preferredStyle: .ActionSheet)
        let logoutAction = UIAlertAction(title: "Log Out", style: .Destructive) { action -> Void in
            self.performSegueWithIdentifier("signedOutSegue", sender:nil)
        }
        alertController.addAction(logoutAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in }
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    
}

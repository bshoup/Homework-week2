//
//  LoginViewController.swift
//  Homework-week2
//
//  Created by Shoup, Beth M.  on 4/6/16.
//  Copyright © 2016 Shoup, Beth M. . All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var signinButton: UIButton!
    
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var signinIndicator: UIActivityIndicatorView!
    
    
    
    var fieldParentInitialY: CGFloat!
    var fieldParentOffset: CGFloat!
    
    var buttonParentInitialY: CGFloat!
    var buttonParentOffset: CGFloat!
    
    var initialY: CGFloat!
    var offset: CGFloat!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 600)
        scrollView.contentSize = scrollView.frame.size
        scrollView.contentInset.bottom = 100
        
        fieldParentInitialY = fieldParentView.frame.origin.y; offset = -20
        buttonParentInitialY = buttonParentView.frame.origin.y; offset  = -240
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressLogin(sender: AnyObject) {
        signinIndicator.startAnimating()
        signinButton.selected = true
        self.checkPassword()
    }


   func checkPassword() {
        
        if
            emailField.text == "beth@gmail.com" && passwordField.text == "pass" {
                signinIndicator.startAnimating()
                signinButton.selected = true
        //performSegueWithIdentifier("yourSegue", sender: nil)
                
                
        }
        else if emailField.text == "" || passwordField.text == "" {
            
            let emptyAlert = UIAlertController(title: "Email Required", message: "Try that one again.", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
            })
            
            emptyAlert.addAction(okAction)
            
            presentViewController(emptyAlert, animated: true, completion: nil)
        }
            
        
        else {
            signinIndicator.stopAnimating()
            signinButton.selected = false
        }
    }

  
    
    
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.frame.origin.y = fieldParentInitialY + offset + 140
        
        buttonParentView.frame.origin.y = buttonParentInitialY + offset
    
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        fieldParentView.frame.origin.y = fieldParentInitialY
        
        buttonParentView.frame.origin.y = buttonParentInitialY
        
    
    }
    
   
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
    }
    

}

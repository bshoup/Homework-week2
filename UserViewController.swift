//
//  UserViewController.swift
//  Homework-week2
//
//  Created by Shoup, Beth M.  on 4/6/16.
//  Copyright © 2016 Shoup, Beth M. . All rights reserved.
//

import UIKit

class UserViewController: UIViewController, UIScrollViewDelegate {

  
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    
    @IBOutlet weak var tile3View: UIImageView!
    
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
   
    @IBOutlet weak var tile6View: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      scrollView.contentSize = CGSize(width: 320, height: 1136)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        // Dispose of any resources that can be recreated.
    }
    

}


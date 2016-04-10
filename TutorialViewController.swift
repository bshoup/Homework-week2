//
//  TutorialViewController.swift
//  Homework-week2
//
//  Created by Shoup, Beth M.  on 4/9/16.
//  Copyright © 2016 Shoup, Beth M. . All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var spinButtonView: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        spinButtonView.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = page
        
        if pageControl.currentPage == 3 {
            pageControl.hidden = true
           spinButtonView.alpha = 1
        }
            
        else {
            pageControl.hidden = false
           spinButtonView.alpha = 0
        }
    }
    




}

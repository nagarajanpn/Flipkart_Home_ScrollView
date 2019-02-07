//
//  ViewController.swift
//  ScrollviewTrivago
//
//  Created by wflogin on 03/01/19.
//  Copyright © 2019 wflogin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstView_View: UIView!
    
    @IBOutlet var firstView_Hg_Constraint: NSLayoutConstraint!
    
    @IBOutlet var animation_Scrollview: UIScrollView!
    
    @IBOutlet var mainView_Scroll: UIView!
    
    
    
    @IBOutlet var mainView_top_Contraint: NSLayoutConstraint!
    
    
    @IBOutlet var mainView_Hg_Constraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animation_Scrollview.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}
extension ViewController:UIScrollViewDelegate{
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        print("end")
//    }
//    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
//        print("start")
//         let mypoint = CGPoint(x: 30, y: 30)
//        if mypoint.y == scrollView.contentOffset.y
//        {
//
//        }
//    }
//    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
//        print("entered top")
//    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("am drgg begin")
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        view.layoutIfNeeded()
        
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        
        if scrollView.contentOffset.y == 90{
            print("am entering")
            UIView.animate(withDuration: 1.0, animations: {
                self.firstView_Hg_Constraint.constant = 50
               // scrollView.contentSize = CGSize(width: 300, height: 600)
        
                self.mainView_top_Contraint.constant = 10
                self.mainView_Scroll.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 800)
                self.mainView_Scroll.backgroundColor = UIColor.red
                //self.mainView_Hg_Constraint.constant = scrollView.frame.height-20
                self.view.layoutIfNeeded()
              
                
            })
//            scrollView.setContentOffset(CGPoint(x: 10, y:scrollView.frame.height), animated: true)
//            scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height)
        }
//        if scrollView.contentOffset.y >= 90{
//            UIView.animate(withDuration: 2.0) {
//                self.firstView_Hg_Constraint.constant = 143
//                self.view.layoutIfNeeded()
//            }
//        }
      
    }
}


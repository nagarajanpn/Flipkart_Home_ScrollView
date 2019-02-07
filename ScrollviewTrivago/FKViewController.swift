//
//  FKViewController.swift
//  ScrollviewTrivago
//
//  Created by wflogin on 07/02/19.
//  Copyright © 2019 wflogin. All rights reserved.
//

import UIKit

class FKViewController: UIViewController {

    @IBOutlet var main_ScrollView: UIView!
    
    @IBOutlet var first_View: UIView!
    
    @IBOutlet var second_View: UIView!
    
    @IBOutlet var all_ProductCollectionView: UICollectionView!
    
    @IBOutlet var firstView_HightConstraint: NSLayoutConstraint!
    @IBOutlet var firstTop_Constraint: NSLayoutConstraint!
    
    
    @IBOutlet var secondView_HgConstaints: NSLayoutConstraint!
    var newFrame = CGRect()
    
    var img:Images!
    var myImages:[String]!
    var myRealImages:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        all_ProductCollectionView.delegate = self
        all_ProductCollectionView.dataSource  = self
        //img.images = ["1","2","3"]
        
//       img.images = img.addImages(imgs: ["1","2"])
        myImages = ["1","2","3","4","1","2","3","4","1","2","3","2","3","4","1","2","3","4","1","2","3"]
        //FOR CHECK
        // new check
        //myRealImages =  ["1","2","3","4","1","2","3","4","1","2","3","2","3","4","1","2","3","4","1","2","3"]
    }
    



}
extension FKViewController:UIScrollViewDelegate{
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
      
       
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y >= 50 {
            UIView.animate(withDuration: 5.20) {
                 self.changeViews1()
                scrollView.isScrollEnabled = true
            }
        }
        else {
            UIView.animate(withDuration: 10.20) {
                self.changeViews()
                scrollView.isScrollEnabled = true
            }
        }
    }
    func changeViews()  {
        self.firstTop_Constraint.constant = 20
        self.secondView_HgConstaints.constant = 20
        
       // newFrame = self.first_View.frame
//        newFrame.size.width = self.view.frame.width
//        newFrame.size.height = 50
//        self.first_View.frame = newFrame
    }
    func changeViews1()  {
       // newFrame = self.first_View.frame
        self.firstTop_Constraint.constant = -30
        self.secondView_HgConstaints.constant = 0

    }
}
extension FKViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //print(img.imgs)
        //return img.imgs.count
        return myImages.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = all_ProductCollectionView.dequeueReusableCell(withReuseIdentifier: "FKCell", for: indexPath)as! FKCollectionViewCell
       // cell.addImages()
        cell.FK_ImageView.image = UIImage(named: myImages[indexPath.item])
        
        return cell
    }
    
}

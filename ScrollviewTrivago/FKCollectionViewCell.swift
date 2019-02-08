//
//  FKCollectionViewCell.swift
//  ScrollviewTrivago
//
//  Created by wflogin on 07/02/19.
//  Copyright © 2019 wflogin. All rights reserved.
//

import UIKit

class FKCollectionViewCell: UICollectionViewCell {
    var ig:Images!
    @IBOutlet var FK_ImageView: UIImageView!
    
    func addImages()  {
        
        for i in ig.imgs{
            FK_ImageView.image = UIImage(named:i)
            
            /// ,u cjecp[d
        }
        
        
    }
    
}

//
//  TinderImageView.swift
//  A Profile in UIStackView
//
//  Created by Charles Martin Reed on 12/10/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class TinderImageView: UIImageView {
    
    @IBInspectable
    var imageIndex: NSNumber! {
        didSet {
            //set inside of Header nib file
            let imageName = "finch0\(imageIndex.stringValue)"
            self.image = UIImage(named: imageName)
        }
    } //needs to be compilable in Obj-C
    
}

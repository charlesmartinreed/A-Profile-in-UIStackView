//
//  TinderImageView.swift
//  A Profile in UIStackView
//
//  Created by Charles Martin Reed on 12/10/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class TinderImageView: UIImageView {
    
    let imageIndexLabel: UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "SSS"
        
        label.layer.shadowOpacity = 1
        label.layer.shadowOffset = .zero
        return label
    }()
    
    @IBInspectable
    var imageIndex: NSNumber! {
        didSet {
            //set inside of Header nib file
            let imageName = "finch0\(imageIndex.stringValue)"
            self.image = UIImage(named: imageName)
            
            //rounding the corner
            layer.cornerRadius = 10
            
            //setting the "number label"
            imageIndexLabel.text = imageIndex.stringValue
        }
    } //needs to be compilable in Obj-C
    
    
    required init?(coder aDecoder: NSCoder) {
        //called when IB draws something in the layout
        super.init(coder: aDecoder)
        
        addSubview(imageIndexLabel)
        imageIndexLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let imageConstraints = [
            imageIndexLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            imageIndexLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8)]
        NSLayoutConstraint.activate(imageConstraints)
        
    }
}

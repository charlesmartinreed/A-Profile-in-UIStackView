//
//  ProfileController.swift
//  A Profile in UIStackView
//
//  Created by Charles Martin Reed on 12/10/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class ProfileController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    //MARK:- UI Properties
    fileprivate let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        navigationItem.title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        collectionView.alwaysBounceVertical = true //the dragging effect iOS has when you reach the "end" of a view
        
        //MARK:- Register UICollectionView header
        let headerNib = UINib(nibName: "Header", bundle: nil) //bundle is basically the directory in which the compiler searches for your Nib. Nil means it's in the 'main bundle'
        
        collectionView.register(headerNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId) //kind for collection view is either header or footer
    }
    
    //MARK:- Return UICollectionView header
    
    //size the header using flow layout delegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: view.frame.width, height: view.frame.width)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        //dequeue the header
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        //header.backgroundColor = .blue //testing the container size
        
        return header
        
    }
}

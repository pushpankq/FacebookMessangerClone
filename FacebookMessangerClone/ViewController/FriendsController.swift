//
//  ViewController.swift
//  FacebookMessangerClone
//
//  Created by Puspank Kumar on 07/11/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class FriendsController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(cellType: FriendCell.self)
        
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        //layout.estimatedItemSize = CGSize(width: 1, height: 1)
        
        collectionView.collectionViewLayout = layout

    }
}

extension FriendsController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(for: indexPath, cellType: FriendCell.self)
        return cell
    }
}

//extension FriendsController: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width), height: 80);
//    }
//
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        collectionView?.collectionViewLayout.invalidateLayout();
//    }
//
////    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
////        super.viewWillTransition(to: size, with: coordinator)
////
////        coordinator.animate(alongsideTransition: { (context) in
////            self.collectionView.collectionViewLayout.invalidateLayout()
////        }, completion: nil)
////    }
//}


//
//  ViewController.swift
//  FacebookMessangerClone
//
//  Created by Puspank Kumar on 07/11/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class FriendsController: UICollectionViewController {
    
    var messages: [Message]?

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(cellType: MessageCell.self)
        
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        collectionView.collectionViewLayout = layout
        
        setUpData()

    }
}

extension FriendsController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        guard let count = messages?.count else { return 0 }
        return count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(for: indexPath, cellType: MessageCell.self)
        cell.configureCell(message: messages![indexPath.row])
        return cell
    }
}


extension FriendsController {
    
    private func setUpData() {
        
        let mark = Friend()
        mark.name = "Mark Zukarburg"
        mark.profileImageName = "zukarbugProfile"
        
        let message = Message()
        message.friend = mark
        message.text = "Marlie, my name is Mark, nice to meet you"
        message.date = Date()
        
        messages = [message]
    }
    
}

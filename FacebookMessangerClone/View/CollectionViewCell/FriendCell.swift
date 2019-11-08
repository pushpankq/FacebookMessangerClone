//
//  FriendCell.swift
//  FacebookMessangerClone
//
//  Created by Puspank Kumar on 07/11/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class FriendCell: UICollectionViewCell, NibReusable {
    
    @IBOutlet weak var friendImageView: ORDesignableImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
}

//
//  FriendCell.swift
//  FacebookMessangerClone
//
//  Created by Puspank Kumar on 07/11/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class MessageCell: UICollectionViewCell, NibReusable {
    
    @IBOutlet weak var friendImageView: ORDesignableImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    func configureCell(message: Message) {
        
        nameLabel.text = message.friend?.name ?? ""
        messageLabel.text = message.text ?? ""
        friendImageView.image = UIImage(named: message.friend?.profileImageName ?? "")
        timeLabel.text = message.date?.getTime()
        
    }
}

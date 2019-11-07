//
//  UITableView+Label.swift
//  CommunityX
//
//  Created by Puspank Kumar on 17/08/19.
//  Copyright © 2019 SK. All rights reserved.
//

import Foundation
import UIKit

//extension UITableView {
//
//    func setEmptyMessageInBold(_ message: String) {
//
//        let customView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height))
//       self.backgroundView = customView
//
//        let messageLabel = UILabel(frame: CGRect(x: 0, y: self.frame.size.width/2 - 10, width: SwifterSwift.screenWidth, height: 40))
//        customView.addSubview(messageLabel)
//
//        messageLabel.text = message
//        messageLabel.textColor = .black
//        messageLabel.numberOfLines = 0
//        messageLabel.textAlignment = .center
//        messageLabel.font = UIFont(name: Font.medium, size: FontSize.extraLarge)
//
//        self.separatorStyle = .none
//    }
//
//    func setCenterEmptyMessageInBold(_ message: String) {
//        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height))
//        messageLabel.text = message
//        messageLabel.textColor = .gray
//        messageLabel.numberOfLines = 0
//        messageLabel.textAlignment = .center
//        messageLabel.font = UIFont(name: Font.medium, size: FontSize.medium)
//        self.backgroundView = messageLabel
//        self.separatorStyle = .none
//    }
//
//    func restore() {
//        self.backgroundView = nil
//    }
//}

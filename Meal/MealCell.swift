//
//  MealCell.swift
//  Meal
//
//  Created by 전수열 on 1/1/16.
//  Copyright © 2016 Suyeol Jeon. All rights reserved.
//

import UIKit

class MealCell: UITableViewCell {

    let titleLabel = UILabel()
    let contentLabel = UILabel()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .None

        self.titleLabel.font = UIFont.boldSystemFontOfSize(15)
        self.contentLabel.font = UIFont.systemFontOfSize(15)
        self.contentLabel.numberOfLines = 0

        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.contentLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        self.titleLabel.sizeToFit()
        self.titleLabel.frame.origin.x = 10
        self.titleLabel.frame.origin.y = 10
        self.titleLabel.frame.size.width = 50

        self.contentLabel.frame.origin.x = 50
        self.contentLabel.frame.origin.y = 10
        self.contentLabel.frame.size.width = self.contentView.frame.width - self.contentLabel.frame.origin.x - 10
        self.contentLabel.sizeToFit()
    }

}
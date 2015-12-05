//
//  IssueTableViewCell.swift
//  JomReport
//
//  Created by Jack Xiong Lim on 02/12/2015.
//  Copyright © 2015 JomReport. All rights reserved.
//

import UIKit

class IssueTableViewCell: UITableViewCell {

    @IBOutlet weak var issueThumbnailImageView: UIImageView!
    @IBOutlet weak var issueTitleLabel: UILabel!
    @IBOutlet weak var issueAddressLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

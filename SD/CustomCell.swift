//
//  CustomCell.swift
//  SD
//
//  Created by Mustang Design on 2015/9/21.
//  Copyright (c) 2015年 teamecodenect. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var EventTitle: UILabel!
    @IBOutlet weak var EventImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}







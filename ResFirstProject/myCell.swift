//
//  myCell.swift
//  ResFirstProject
//
//  Created by christina zaki on 9/21/19.
//  Copyright © 2019 christina zaki. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {

    @IBOutlet weak var nameMeal: UILabel!
    @IBOutlet weak var imageMeal: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

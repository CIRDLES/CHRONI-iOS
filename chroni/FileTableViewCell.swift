//
//  FileTableViewCell.swift
//  chroni
//
//  Created by Tyler Newman on 6/16/16.
//  Copyright © 2016 CIRDLES. All rights reserved.
//

import UIKit

class FileTableViewCell: UITableViewCell {

    @IBOutlet var fileNameText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

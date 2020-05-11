//
//  CustomTableViewCell.swift
//  Todo
//
//  Created by Takuro Nishino on 2020/05/11.
//  Copyright © 2020年 nishitaku. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    func controlDisplay(indexPath: IndexPath, label: String) {
        self.label.text = String((indexPath.row) + 1) + label
        self.img.image = UIImage(named: "icon.jpg")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

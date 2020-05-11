//
//  CustomTableViewCell.swift
//  Todo
//
//  Created by Takuro Nishino on 2020/05/11.
//  Copyright © 2020年 nishitaku. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    func controlDisplay(indexPath: IndexPath) {
        self.label.text = String((indexPath.row) + 1)
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

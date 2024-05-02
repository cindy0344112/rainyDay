//
//  MuseumTableViewCell.swift
//  rainyDay
//
//  Created by 邱珮瑜 on 2024/5/1.
//

import UIKit

class MuseumTableViewCell: UITableViewCell {

    @IBOutlet weak var museumImage: UIImageView!    
    @IBOutlet weak var museumName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

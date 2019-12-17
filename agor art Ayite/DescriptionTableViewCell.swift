//
//  DescriptionTableViewCell.swift
//  agor art Ayite
//
//  Created by ayite  on 17/12/2019.
//  Copyright © 2019 ayite . All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var pictureDescription: UIImageView!
    var eventObjet: Event!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        pictureDescription.image = eventObjet.picturePresentationEvent
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

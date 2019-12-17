//
//  EventTableViewCell.swift
//  agor art Ayite
//
//  Created by ayite  on 13/12/2019.
//  Copyright © 2019 ayite . All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var titleEvent: UILabel!
    @IBOutlet weak var localateEvent: UILabel!
    @IBOutlet weak var cityEvent: UILabel!
    @IBOutlet weak var dateEvent: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(withIcon: String, titleEvent: String, localate: String, city: String,date: String) {
        
        self.titleEvent.text = titleEvent
        localateEvent.text = localate
        cityEvent.text = city
        dateEvent.text = date
        picture.contentMode = .scaleToFill
        
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

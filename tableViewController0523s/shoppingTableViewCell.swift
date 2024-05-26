//
//  shoppingTableViewCell.swift
//  tableViewController0523s
//
//  Created by 홍석평 on 5/27/24.
//

import UIKit

class shoppingTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet var mainLabel: UILabel!
    
    @IBOutlet var checkButton: UIButton!
    
    @IBOutlet var starButton: UIButton!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

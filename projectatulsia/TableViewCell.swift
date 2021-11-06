//
//  TableViewCell.swift
//  projectatulsia
//
//  Created by SAIMAG on 05/11/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgv: UIImageView!
    
    @IBOutlet weak var Bakeryname: UILabel!
    
    @IBOutlet weak var info: UILabel!
    
    @IBOutlet weak var shop: UILabel!
    
    @IBOutlet weak var rating: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var offer: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var view2: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        view2.layer.cornerRadius = view2.frame.width/2
        // Configure the view for the selected state
    }

}

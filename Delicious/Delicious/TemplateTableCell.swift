//
//  TemplateTableCell.swift
//  Delicious
//
//  Created by Leo Kuyper on 2020/11/06.
//

import UIKit

class TemplateTableCell: UITableViewCell {
    
    @IBOutlet var recipeName:UILabel!
    @IBOutlet var recipeImage:UIImageView!
    @IBOutlet var recipeDescription:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  ResultTableViewCell.swift
//  GraceViewController
//
//  Created by YU SUGIYAMA on 2016/08/06.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var answeredQuizLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

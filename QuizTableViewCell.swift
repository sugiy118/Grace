//
//  QuizTableViewCell.swift
//  TestFiveViewController
//
//  Created by YU SUGIYAMA on 2016/08/04.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuizTableViewCell: UITableViewCell {
    @IBOutlet weak var quizNumber: UILabel!
    @IBOutlet weak var quizTitle: UILabel!
    @IBOutlet weak var quizSchedule: UILabel!
    @IBOutlet weak var quizPlace: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  AreaTableViewCell.swift
//  TestFiveViewController
//
//  Created by YU SUGIYAMA on 2016/08/04.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class AreaTableViewCell: UITableViewCell {
    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var imageMask: UIView!
    @IBOutlet weak var locationName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setLocationImageView()
        setImageMaskView()
        setNameLabel()
    }
    
    func setLocationImageView(){
        self.locationImage.contentMode = UIViewContentMode.ScaleAspectFill
        self.locationImage.layer.masksToBounds = true
    }
    
    func setImageMaskView(){
        self.imageMask.alpha = 0.8
    }
    
    func setNameLabel(){
        self.locationName.textColor = UIColor.whiteColor()
        self.locationName.textAlignment = NSTextAlignment.Center
        self.locationName.font = UIFont(name: "Helvetica-Light", size: 40)
    }


    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  MainTableView.swift
//  TestFiveViewController
//
//  Created by YU SUGIYAMA on 2016/08/04.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

@objc protocol MainTableViewDelegate{
    func didSelectTableViewCell(quiz:Quiz)
}

class MainTableView: UITableView,UITableViewDelegate, UITableViewDataSource {
    weak var customDelegate: MainTableViewDelegate?
    
    let quizManager = QuizManager.sharedInstance
    var locationName: String!
    var locationImageName: String!
    var color: UIColor!
    let blue = UIColor(red: 92.0 / 255, green: 192.0 / 255, blue: 210.0 / 255, alpha: 1.0)
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
        self.delegate = self
        self.dataSource = self
        self.registerNib(UINib(nibName: "AreaTableViewCell", bundle: nil), forCellReuseIdentifier: "AreaTableViewCell")
        self.registerNib(UINib(nibName: "QuizTableViewCell", bundle: nil), forCellReuseIdentifier: "QuizTableViewCell")
    }
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //セクション数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    //セル数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return  quizManager.quizzes.count
        }
    }
    
    //セル内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("AreaTableViewCell", forIndexPath: indexPath) as! AreaTableViewCell
            cell.locationImage.image = UIImage(named: self.locationImageName)
            cell.locationName.text = self.locationName
            cell.imageMask.backgroundColor = self.color
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("QuizTableViewCell", forIndexPath: indexPath) as! QuizTableViewCell
            let quiz = self.quizManager.quizzes[indexPath.row]
            print("\(quiz.quiznumber)あああああ")
            print("\(quiz.title)いいいいい")
            cell.quizNumber.text = "Q.\(quiz.quiznumber)"
            cell.quizTitle.text = "『\(quiz.title)』"
            cell.quizPlace.text = "\(quiz.place)"
            cell.quizSchedule.text = "\(quiz.schedule)"
            
            return cell
        }
    }
    
    //セルの高さ
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 200
        } else {
            return 87
        }
    }
    
    //タップされた時に次の画面に移動するDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section != 0 {
            let quiz = quizManager.quizzes[indexPath.row]
            self.customDelegate?.didSelectTableViewCell(quiz)
        }
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

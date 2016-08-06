//
//  MyPageTableView.swift
//  GraceViewController
//
//  Created by YU SUGIYAMA on 2016/08/06.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class MyPageTableView: UITableView,UITableViewDelegate, UITableViewDataSource {
    
    let resultManager = ResultManager.sharedInstance
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        
        self.delegate = self
        self.dataSource = self
        
        self.registerNib(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "ResultTableViewCell")
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return resultManager.results.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("ResultTableViewCell", forIndexPath: indexPath) as!  ResultTableViewCell
            let result = self.resultManager.results[indexPath.row]
            print("\(result.score)あああああ")
            print("\(result.quiznumber)いいいいい")
            cell.answeredQuizLabel.text = "Q.\(result.quiznumber)の答えは"
            cell.scoreLabel.text = "5問中\(result.score)問でした"
            return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
            return 60
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

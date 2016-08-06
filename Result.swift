//
//  Result.swift
//  GraceViewController
//
//  Created by YU SUGIYAMA on 2016/08/06.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class Result: NSObject {
    var score: Int
    var name: String
    var quiznumber: Int
    var user: User?
    
    init(score: Int, name: String, quiznumber: Int) {
        self.score = score
        self.name = name
        self.quiznumber = quiznumber
    }
    
    func save () {
        let resultObject = NCMBObject(className: "Result")
        resultObject.setObject(self.score, forKey: "score")
        resultObject.setObject(self.name, forKey: "userName")
        resultObject.setObject(self.quiznumber, forKey: "quizNumber")
        resultObject.saveInBackgroundWithBlock { (error) in
            if error == nil {
                print("保存完了")
            }
        }
        
    }
}

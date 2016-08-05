//
//  AnswerManager.swift
//  TestFiveViewController
//
//  Created by YU SUGIYAMA on 2016/08/03.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class AnswerManager: NSObject {
    static let sharedInstance = AnswerManager()
    var answers:[Answer] = []
    
    var y: Int = 0
    
    
    
    func fetchAnswer1(x: Int, callback:() -> Void) {
        let query = NCMBQuery (className: "Answer")
        self.y = x
        query.whereKey("quizNumber", equalTo: x)
        query.whereKey("quizPriority", equalTo: 0)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    
                    let answer1 = object.objectForKey("answer1") as! String
                    let answer2 = object.objectForKey("answer2") as! String
                    let answer3 = object.objectForKey("answer3") as! String
                    let answer4 = object.objectForKey("answer4") as! String
                    let x = object.objectForKey("rightAnswer") as! Int
                    print(x)
                    let answer = Answer()
                    answer.answer1 = answer1
                    answer.answer2 = answer2
                    answer.answer3 = answer3
                    answer.answer4 = answer4
                    answer.rightAnswer = x
                    self.answers.append(answer)
                }
            callback()
                
            }
        }
    }
    
    func fetchAnswer2(callback:() -> Void) {
        let query = NCMBQuery (className: "Answer")
        query.whereKey("quizNumber", equalTo: self.y)
        query.whereKey("quizPriority", equalTo: 1)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    let answer1 = object.objectForKey("answer1") as! String
                    let answer2 = object.objectForKey("answer2") as! String
                    let answer3 = object.objectForKey("answer3") as! String
                    let answer4 = object.objectForKey("answer4") as! String
                    let x = object.objectForKey("rightAnswer") as! Int
                    let answer = Answer()
                    answer.answer1 = answer1
                    answer.answer2 = answer2
                    answer.answer3 = answer3
                    answer.answer4 = answer4
                    answer.rightAnswer = x
                    self.answers.append(answer)
                }
                callback()
                
            }
        }
    }
    
    func fetchAnswer3(callback:() -> Void) {
        let query = NCMBQuery (className: "Answer")
        query.whereKey("quizNumber", equalTo: self.y)
        query.whereKey("quizPriority", equalTo: 2)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    let answer1 = object.objectForKey("answer1") as! String
                    let answer2 = object.objectForKey("answer2") as! String
                    let answer3 = object.objectForKey("answer3") as! String
                    let answer4 = object.objectForKey("answer4") as! String
                    let x = object.objectForKey("rightAnswer") as! Int
                    let answer = Answer()
                    answer.answer1 = answer1
                    answer.answer2 = answer2
                    answer.answer3 = answer3
                    answer.answer4 = answer4
                    answer.rightAnswer = x
                    self.answers.append(answer)
                }
                callback()
                
            }
        }
    }
    
    func fetchAnswer4(callback:() -> Void) {
        let query = NCMBQuery (className: "Answer")
        query.whereKey("quizNumber", equalTo: self.y)
        query.whereKey("quizPriority", equalTo: 3)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    let answer1 = object.objectForKey("answer1") as! String
                    let answer2 = object.objectForKey("answer2") as! String
                    let answer3 = object.objectForKey("answer3") as! String
                    let answer4 = object.objectForKey("answer4") as! String
                    let x = object.objectForKey("rightAnswer") as! Int
                    let answer = Answer()
                    answer.answer1 = answer1
                    answer.answer2 = answer2
                    answer.answer3 = answer3
                    answer.answer4 = answer4
                    answer.rightAnswer = x
                    self.answers.append(answer)
                }
                callback()
                
            }
        }
    }
    
    func fetchAnswer5(callback:() -> Void) {
        let query = NCMBQuery (className: "Answer")
        query.whereKey("quizNumber", equalTo: self.y)
        query.whereKey("quizPriority", equalTo: 4)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    let answer1 = object.objectForKey("answer1") as! String
                    let answer2 = object.objectForKey("answer2") as! String
                    let answer3 = object.objectForKey("answer3") as! String
                    let answer4 = object.objectForKey("answer4") as! String
                    let x = object.objectForKey("rightAnswer") as! Int
                    let answer = Answer()
                    answer.answer1 = answer1
                    answer.answer2 = answer2
                    answer.answer3 = answer3
                    answer.answer4 = answer4
                    answer.rightAnswer = x
                    self.answers.append(answer)
                }
                callback()
                
            }
        }
    }
}

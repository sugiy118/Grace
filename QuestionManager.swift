//
//  QuestionManager.swift
//  TestFiveViewController
//
//  Created by YU SUGIYAMA on 2016/08/03.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuestionManager: NSObject {
    
    static let sharedInstance = QuestionManager()
    var questions:[Question] = []
    
    func fetchQuestion1(callback:() -> Void) {
        let query = NCMBQuery (className: "Question")
        query.whereKey("quizNumber", equalTo: 1)
        query.whereKey("quizPriority", equalTo: 0)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    let sentence = object.objectForKey("sentence") as! String
                    let question = Question()
                    question.sentence = sentence
                    self.questions.append(question)
                }
            }
        callback()
        }
    }
    
    func fetchQuestion2(callback:() -> Void) {
        let query = NCMBQuery (className: "Question")
        query.whereKey("quizNumber", equalTo: 1)
        query.whereKey("quizPriority", equalTo: 1)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    let sentence = object.objectForKey("sentence") as! String
                    let question = Question()
                    question.sentence = sentence
                    self.questions.append(question)
                }
            }
            callback()
        }
    }
    
    func fetchQuestion3(callback:() -> Void) {
        let query = NCMBQuery (className: "Question")
        query.whereKey("quizNumber", equalTo: 1)
        query.whereKey("quizPriority", equalTo: 2)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    let sentence = object.objectForKey("sentence") as! String
                    let question = Question()
                    question.sentence = sentence
                    self.questions.append(question)
                }
            }
            callback()
        }
    }
    
    func fetchQuestion4(callback:() -> Void) {
        let query = NCMBQuery (className: "Question")
        query.whereKey("quizNumber", equalTo: 1)
        query.whereKey("quizPriority", equalTo: 3)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    let sentence = object.objectForKey("sentence") as! String
                    let question = Question()
                    question.sentence = sentence
                    self.questions.append(question)
                }
            }
            callback()
        }
    }
    
    func fetchQuestion5(callback:() -> Void) {
        let query = NCMBQuery (className: "Question")
        query.whereKey("quizNumber", equalTo: 1)
        query.whereKey("quizPriority", equalTo: 4)
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                for object in objects {
                    let sentence = object.objectForKey("sentence") as! String
                    let question = Question()
                    question.sentence = sentence
                    self.questions.append(question)
                }
            }
            callback()
        }
    }
}

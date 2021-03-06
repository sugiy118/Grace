//
//  QuizManager.swift
//  TestFiveViewController
//
//  Created by YU SUGIYAMA on 2016/08/04.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class QuizManager: NSObject {
    
    static let sharedInstance = QuizManager()
    
    var quizzes:[Quiz] = []
    
    func fetchQuizcategories(callback: () -> Void) {
        let query = NCMBQuery(className: "Quiz")
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                self.quizzes = []
                for object in objects {
                    let title = object.objectForKey("title") as! String
                    let quizNumber = object.objectForKey("quizNumber") as! Int
                    let schedule = object.objectForKey("schedule") as! String
                    let place = object.objectForKey("place") as! String

                    let quiz = Quiz()
                    quiz.quiznumber = quizNumber
                    quiz.title = title
                    quiz.schedule = schedule
                    quiz.place = place
                    self.quizzes.append(quiz)
                    callback()
                }
            }
        }
    }

}

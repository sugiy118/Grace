//
//  ResultManager.swift
//  GraceViewController
//
//  Created by YU SUGIYAMA on 2016/08/06.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ResultManager: NSObject {
    static let sharedInstance = ResultManager()
    var results:[Result] = []
    
    func fetchResults(callback: () -> Void) {
        let query = NCMBQuery(className: "Result")
        query.findObjectsInBackgroundWithBlock { (objects, error) in
            if error == nil {
                self.results = []
                for object in objects {
                    let score = object.objectForKey("score") as! Int
                    let name =  object.objectForKey("userName") as! String
                    let quiznumber = object.objectForKey("quizNumber") as! Int
                    let result = Result(score: score, name: name, quiznumber: quiznumber)
                    self.results.append(result)
                    callback()
                }
            }
        }
    }
    

}

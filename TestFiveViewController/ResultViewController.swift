//
//  ResultViewController.swift
//  TestFiveViewController
//
//  Created by YU SUGIYAMA on 2016/08/04.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    let quizManager = QuizManager.sharedInstance
    var x: Int = 0
    var quiz: Quiz!

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "\(x)問"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

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

    
    @IBAction func recordMyPageBtn(sender: UIButton) {
        print("\(NCMBUser.currentUser().userName)")
        print("\(self.quiz)飛ばす先2つ目")
        let result = Result(score: self.x, name: NCMBUser.currentUser().userName, quiznumber: quiz.quiznumber)
        result.save()
    }
    
    @IBAction func gotoTopBtn(sender: UIButton) {
         self.performSegueWithIdentifier("gotoTopSegue", sender: nil)
    }
    
    func toMyPage(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("myPageSegue", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

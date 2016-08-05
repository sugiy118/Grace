//
//  Question5ViewController.swift
//  TestFiveViewController
//
//  Created by YU SUGIYAMA on 2016/08/03.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class Question5ViewController: UIViewController {
    
    @IBOutlet weak var question5Label: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    
    let questionManager = QuestionManager.sharedInstance
    let answerManager = AnswerManager.sharedInstance
    
    var x: Int = 0
    var a = 0
    var b = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionManager.fetchQuestion5 {
            self.question5Label.text = self.questionManager.questions[4].sentence
        }
        
        answerManager.fetchAnswer5 {
            self.answer1.setTitle(self.answerManager.answers[4].answer1, forState: UIControlState.Normal)
            self.answer2.setTitle(self.answerManager.answers[4].answer2, forState: UIControlState.Normal)
            self.answer3.setTitle(self.answerManager.answers[4].answer3, forState: UIControlState.Normal)
            self.answer4.setTitle(self.answerManager.answers[4].answer4, forState: UIControlState.Normal)
            self.a = self.answerManager.answers[0].rightAnswer
            print(self.a)
        }
    }
    
    @IBAction func answer1Btn(sender: UIButton) {
        if b == 0 {
            if a == 1 {
                x += 1
                let alertController = UIAlertController(title: "Yes!!", message: "こちらが正解でした",
                                                        preferredStyle: UIAlertControllerStyle.Alert)
                let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
                alertController.addAction(Action)
                self.presentViewController(alertController, animated: true, completion: nil)
                sender.enabled = false
            } else {
                let alertController = UIAlertController(title: "Oops!!", message: "不正解です",
                                                        preferredStyle: UIAlertControllerStyle.Alert)
                let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
                alertController.addAction(Action)
                self.presentViewController(alertController, animated: true, completion: nil)
                sender.enabled = false
            }
            
        } else if a == 1 {
            x += 1
            let alertController = UIAlertController(title: "Great!!", message: "正解です",
                                                    preferredStyle: UIAlertControllerStyle.Alert)
            let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
            alertController.addAction(Action)
            self.presentViewController(alertController, animated: true, completion: nil)
            sender.enabled = false
            b = 0
        } else {
            let alertController = UIAlertController(title: "Oops!!", message: "不正解です",
                                                    preferredStyle: UIAlertControllerStyle.Alert)
            let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
            alertController.addAction(Action)
            self.presentViewController(alertController, animated: true, completion: nil)
            sender.enabled = false
            b = 0
        }
        
    }
    @IBAction func answer2Btn(sender: UIButton) {
        if b == 0 {
            if a == 2 {
                x += 1
                let alertController = UIAlertController(title: "Yes!!", message: "こちらが正解でした",
                                                        preferredStyle: UIAlertControllerStyle.Alert)
                let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
                alertController.addAction(Action)
                self.presentViewController(alertController, animated: true, completion: nil)
                sender.enabled = false
            } else {
                let alertController = UIAlertController(title: "Oops!!", message: "不正解です",
                                                        preferredStyle: UIAlertControllerStyle.Alert)
                let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
                alertController.addAction(Action)
                self.presentViewController(alertController, animated: true, completion: nil)
                sender.enabled = false
            }
        } else if a == 2 {
            x += 1
            let alertController = UIAlertController(title: "Great!!", message: "正解です",
                                                    preferredStyle: UIAlertControllerStyle.Alert)
            let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
            alertController.addAction(Action)
            self.presentViewController(alertController, animated: true, completion: nil)
            sender.enabled = false
            b = 0
        } else {
            let alertController = UIAlertController(title: "Oops!!", message: "不正解です",
                                                    preferredStyle: UIAlertControllerStyle.Alert)
            let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
            alertController.addAction(Action)
            self.presentViewController(alertController, animated: true, completion: nil)
            sender.enabled = false
            b = 0
        }
        
    }
    @IBAction func answer3Btn(sender: UIButton) {
        if b == 0 {
            if a == 3 {
                x += 1
                let alertController = UIAlertController(title: "Yes!!", message: "こちらが正解でした",
                                                        preferredStyle: UIAlertControllerStyle.Alert)
                let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
                alertController.addAction(Action)
                self.presentViewController(alertController, animated: true, completion: nil)
                sender.enabled = false
            } else {
                let alertController = UIAlertController(title: "Oops!!", message: "不正解です",
                                                        preferredStyle: UIAlertControllerStyle.Alert)
                let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
                alertController.addAction(Action)
                self.presentViewController(alertController, animated: true, completion: nil)
                sender.enabled = false
            }
        } else if a == 3 {
            x += 1
            let alertController = UIAlertController(title: "Great!!", message: "正解です",
                                                    preferredStyle: UIAlertControllerStyle.Alert)
            let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
            alertController.addAction(Action)
            self.presentViewController(alertController, animated: true, completion: nil)
            sender.enabled = false
            b = 0
        } else {
            let alertController = UIAlertController(title: "Oops!!", message: "不正解です",
                                                    preferredStyle: UIAlertControllerStyle.Alert)
            let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
            alertController.addAction(Action)
            self.presentViewController(alertController, animated: true, completion: nil)
            sender.enabled = false
            b = 0
        }
        
    }
    @IBAction func answer4Btn(sender: UIButton) {
        if b == 0 {
            if a == 4 {
                let alertController = UIAlertController(title: "Yes!!", message: "こちらが正解でした",
                                                        preferredStyle: UIAlertControllerStyle.Alert)
                let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
                alertController.addAction(Action)
                self.presentViewController(alertController, animated: true, completion: nil)
                sender.enabled = false
            } else {
                let alertController = UIAlertController(title: "Oops!!", message: "不正解です",
                                                        preferredStyle: UIAlertControllerStyle.Alert)
                let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
                alertController.addAction(Action)
                self.presentViewController(alertController, animated: true, completion: nil)
                sender.enabled = false
            }
        } else if a == 4 {
            x += 1
            let alertController = UIAlertController(title: "Great!!", message: "正解です",
                                                    preferredStyle: UIAlertControllerStyle.Alert)
            let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
            alertController.addAction(Action)
            self.presentViewController(alertController, animated: true, completion: nil)
            sender.enabled = false
            b = 0
        } else {
            let alertController = UIAlertController(title: "Oops!!", message: "不正解です",
                                                    preferredStyle: UIAlertControllerStyle.Alert)
            let Action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:nil)
            alertController.addAction(Action)
            self.presentViewController(alertController, animated: true, completion: nil)
            sender.enabled = false
            b = 0
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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

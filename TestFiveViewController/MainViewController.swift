//
//  MainViewController.swift
//  TestFiveViewController
//
//  Created by YU SUGIYAMA on 2016/08/04.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate, MainTableViewDelegate{
    @IBOutlet weak var locationScrollView: UIScrollView!

    let quizManager = QuizManager.sharedInstance
    
    var currentSelectedQuiz: Quiz?

    let tokyo = "TOKYO"
    let tokyoImageName = "tokyo_top_image.png"
    let blue = UIColor(red: 0.0 / 255, green: 0.0 / 255, blue: 160.0 / 255, alpha: 0.5)
    let green = UIColor(red: 105.0 / 255, green: 207.0 / 255, blue: 153.0 / 255, alpha: 1.0)
    let red = UIColor(red: 195.0 / 255, green: 123.0 / 255, blue: 175.0 / 255, alpha: 1.0)
    
    var mypageButton = UIBarButtonItem()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let hoge = setMainTableView(0, y: 0, locationName: self.tokyo, locationImageName: self.tokyoImageName, color: self.blue)

        self.locationScrollView.contentSize = CGSizeMake(self.view.frame.width, self.view.frame.height)
//        self.locationScrollView.contentSize = CGSizeMake(self.view.frame.width, self.locationScrollView.frame.height)
        self.locationScrollView.pagingEnabled = true
        
        quizManager.fetchQuizcategories { 
            hoge.reloadData()
        }

    }
    
    override func viewWillAppear(animated: Bool) {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: #selector(MainViewController.logout))
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "MyPage", style: .Plain, target: self, action: #selector(MainViewController.toMyPage))
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        if NCMBUser.currentUser() == nil {
            performSegueWithIdentifier("modalLoginViewController", sender: self)
        }
    }
    
    func setMainTableView(x: CGFloat,y: CGFloat, locationName: String, locationImageName: String, color: UIColor) -> UITableView{
        let frame = CGRectMake(x, y, self.view.frame.width, locationScrollView.frame.height)

//        let frame = CGRectMake(0, 0, self.view.frame.width, locationScrollView.frame.height)
//        let frame = CGRectMake(x, 0, self.view.frame.width, locationScrollView.frame.height)
        let mainTableView = MainTableView(frame: frame, style: UITableViewStyle.Plain)
        
        mainTableView.customDelegate = self
        mainTableView.locationName = locationName
        mainTableView.locationImageName = locationImageName
        mainTableView.color = color
        self.locationScrollView.addSubview(mainTableView)
        return mainTableView
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func logout() {
        NCMBUser.logOut()
        performSegueWithIdentifier("modalLoginViewController", sender: self)
    }
    
    func toMyPage(sender: UIBarButtonItem) {
        performSegueWithIdentifier("myPageSegue", sender: self)
    }
    
    func didSelectTableViewCell(quiz: Quiz) {
        self.currentSelectedQuiz = quiz
        self.performSegueWithIdentifier("ShowToQuestion1ViewController", sender: nil)
        print("\(currentSelectedQuiz?.quiznumber)ええええ")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if NCMBUser.currentUser() != nil {
            if segue.identifier == "ShowToQuestion1ViewController" {
                let question1ViewController = segue.destinationViewController as! Question1ViewController
                question1ViewController.quiz = self.currentSelectedQuiz
                print("\(self.currentSelectedQuiz)おおおおお")
            }
        }
    }
    
    @IBAction func backFromSecondView(segue:UIStoryboardSegue){
        NSLog("MainViewController#backFromSecondView")
    }
    



}



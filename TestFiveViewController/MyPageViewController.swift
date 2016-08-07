//
//  MyPageViewController.swift
//  GraceViewController
//
//  Created by YU SUGIYAMA on 2016/08/06.
//  Copyright © 2016年 Yu Sugiyama. All rights reserved.
//

import UIKit

class MyPageViewController: UIViewController {
    @IBOutlet weak var userNameLabel: UILabel!
    
    let resultManager = ResultManager.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "\(NCMBUser.currentUser().userName)さんの\nこれまでの結果です"

        let huge = setMypageTableView(0, y: 383)
        resultManager.fetchResults { 
            huge.reloadData()
        }
        
 
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .Plain, target: self, action: #selector(MyPageViewController.BackBtn(_:)))
    }
    
    func setMypageTableView(x: CGFloat,y: CGFloat) -> UITableView{
        let frame = CGRectMake(0, 260, self.view.frame.width, self.view.frame.height)
        let mypageTableView = MyPageTableView(frame: frame, style: UITableViewStyle.Plain)
        
        self.view.addSubview(mypageTableView)
        return mypageTableView
    }

    func BackBtn(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
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

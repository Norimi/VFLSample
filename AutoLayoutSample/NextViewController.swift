//
//  NextViewController.swift
//  AutoLayoutSample
//
//  Created by netNORIMINGCONCEPTION on 2017/04/02.
//  Copyright © 2017年 flatLevel56. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        let yellowView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        redView.backgroundColor = UIColor.red
        yellowView.backgroundColor = UIColor.yellow
        
        self.view.addSubview(redView)
        self.view.addSubview(yellowView)
        
        let views = ["redView": redView, "yellowView": yellowView]
        let metrics = ["width": self.view.frame.width * 0.4]
        let redVerticalFormat = "V:|-88-[redView]-20-|"
        let yellowVerticalFormat = "V:|-88-[yellowView]-20-|"
        let redHorizontalFormat = "H:|-20-[redView(width)]|"
        let yellowHorizontalFormat = "H:[yellowView(==redView)]-20-|"
        
        let redVerticalConstraint = NSLayoutConstraint.constraints(withVisualFormat: redVerticalFormat, options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: views)
        let yellowVerticalConstraint = NSLayoutConstraint.constraints(withVisualFormat: yellowVerticalFormat, options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: views)
        //上部で宣言したmetricsを採用する
        let redHorizontalConstraint = NSLayoutConstraint.constraints(withVisualFormat: redHorizontalFormat, options: NSLayoutFormatOptions(rawValue:0), metrics: metrics, views: views)
        let yellowHorizontalConstraint = NSLayoutConstraint.constraints(withVisualFormat: yellowHorizontalFormat, options: NSLayoutFormatOptions(rawValue:0), metrics: metrics, views: views)
        self.view.addConstraints(redVerticalConstraint + yellowVerticalConstraint + redHorizontalConstraint + yellowHorizontalConstraint)

    }
    
    func basicVFL(){
        
        // Do any additional setup after loading the view.
        let myView = UIView()
        //辞書に文字列を設定する
        let views = ["myView": myView]
        let formatString = "|-[myView(width)]-|"
        
        //メトリクス辞書の作成
        let metrics = ["width": 200]
        //数値を文字列で指定できるようになる
        let formatString2 = "|-[myView(width)]-|"
        
        let constraintWithVFL = NSLayoutConstraint.constraints(withVisualFormat: formatString2, options: .alignAllTop, metrics: metrics, views: views)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  AutoLayoutSample
//
//  Created by netNORIMINGCONCEPTION on 2017/04/02.
//  Copyright © 2017年 flatLevel56. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let redView = UIView()
        let yellowView = UIView()
        let blueView = UIView()
        
        blueView.frame = CGRect(x: 100, y: 120, width: 20, height: 20)
        blueView.backgroundColor = UIColor.blue
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        redView.backgroundColor = UIColor.red
        yellowView.backgroundColor = UIColor.yellow
        
        self.view.addSubview(blueView)
        self.view.addSubview(redView)
        self.view.addSubview(yellowView)
        

        let redViewTopConstraint = NSLayoutConstraint(item: redView,
                                                      attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.top, multiplier: 1.0, constant: 88)
        self.view.addConstraint(redViewTopConstraint)
        
        let redViewLeadingConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: 10)
        self.view.addConstraint(redViewLeadingConstraint)
        
        let redViewBottomConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: -20)
        self.view.addConstraint(redViewBottomConstraint)
        
        let redViewWidthConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.width, multiplier: 0.4, constant: 0)
        self.view.addConstraint(redViewWidthConstraint)
        
        let yellowTopConstraint = NSLayoutConstraint(item: yellowView,
                                                     attribute: NSLayoutAttribute.top,
                                                     relatedBy: NSLayoutRelation.equal,
                                                     toItem: self.view,
                                                     attribute: NSLayoutAttribute.top,
                                                     multiplier: 1.0,
                                                     constant: 88)
        self.view.addConstraint(yellowTopConstraint)
        
        let yellowTrailingConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.trailing,
                                                          relatedBy: NSLayoutRelation.equal,
                                                          toItem: self.view,
                                                          attribute: NSLayoutAttribute.trailing,
                                                          multiplier: 1.0,
                                                          constant: -10)
        self.view.addConstraint(yellowTrailingConstraint)
        
        let yellowWidthConstraint = NSLayoutConstraint(item: yellowView,
                                                       attribute: NSLayoutAttribute.width,
                                                       relatedBy: NSLayoutRelation.equal,
                                                       toItem: redView,
                                                       attribute: NSLayoutAttribute.width,
                                                       multiplier: 1.0,
                                                       constant: 0)
        self.view.addConstraint(yellowWidthConstraint)
        
        let yellowBottonConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.bottom,
                                                        relatedBy: NSLayoutRelation.equal,
                                                        toItem: self.view,
                                                        attribute: NSLayoutAttribute.bottom,
                                                        multiplier: 1.0,
                                                        constant: -20)
        
    }
    
    func tryRemoveAllViews(){
        for view in self.view.subviews {
            view.removeFromSuperview()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


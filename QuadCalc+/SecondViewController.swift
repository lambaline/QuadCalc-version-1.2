//
//  SecondViewController.swift
//  QuadCalc+
//
//  Created by Mike Chu on 11/14/14.
//  Copyright (c) 2014 Mike Chu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet var root1TF : UITextField!
    @IBOutlet var root2TF : UITextField!
    @IBOutlet var ansTextView : UITextView!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
        //resultsTextView.text = ""
        ansTextView.text = ""
        //root1TF.text = ""
        //root2TF.text = ""
    }
    
    let quadCalc = QuadFrm(a: 1, b:3, c:4)
    
    func refreshUI()
    {
        root1TF.text = String(format: "%0.2f", root1TF.text)
        root2TF.text = String(format: "%0.2f", root2TF.text)
    
        ansTextView.text = ansTextView.text
    
    }
    
    @IBAction func calculateTapped(sender : AnyObject)
    {
    var rt1 = Double((root1TF.text as NSString).doubleValue)
    var rt2 = Double((root2TF.text as NSString).doubleValue)
        
    var ans = quadCalc.calcEquation(rt1, b: rt2)
    
    //var root1 = quadCalc.calcRoot1(a, b: b, c: c)
    //var root2 = quadCalc.calcRoot2(a, b: b, c: c)
    //let ans = "Root 1 = \(root1) \nRoot 2 = \(root2)"
    
    ansTextView.text = ans
        
    }
    @IBAction func textChanged(sender : AnyObject)
    {
    
    root1TF.resignFirstResponder()
    root2TF.resignFirstResponder()
    //refreshUI()
    
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    @IBAction func viewTapped(sender : AnyObject) {
    
    }
    


}


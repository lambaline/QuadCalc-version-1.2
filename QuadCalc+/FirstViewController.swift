//
//  FirstViewController.swift
//  QuadCalc+
//
//  Created by Mike Chu on 11/14/14.
//  Copyright (c) 2014 Mike Chu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var aTextField : UITextField!
    @IBOutlet var bTextField : UITextField!
    @IBOutlet var cTextField : UITextField!
    @IBOutlet var resultsTextView : UITextView!
    @IBOutlet var albl : UILabel!
    @IBOutlet var blbl : UILabel!
    @IBOutlet var clbl : UILabel!
    
    //@IBOutlet var prefButton : UIBarButtonItem!
    
    /*@IBOutlet var rt1TF : UITextField!
    @IBOutlet var rt2TF : UITextField!
    @IBOutlet var calcFrmView : UITextView!*/
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
        resultsTextView.text = ""
        //calcFrmView.text = ""
        albl.text = "x"
        blbl.text = "x"
        clbl.text = "1"
    }
    
    let quadCalc = QuadFrm(a: 1, b:3, c:4)
    
    func refreshUI()
    {
        aTextField.text = String(format: "%0.2f", aTextField.text)
        bTextField.text = String(format: "%0.2f", bTextField.text)
        cTextField.text = String(format: "%0.2f", cTextField.text)
        resultsTextView.text = resultsTextView.text
        
        //rt1TF.text = String(format: "%0.2f", rt1TF.text)
        //rt2TF.text = String(format: "%0.2f", rt2TF.text)
        //calcFrmView.text = calcFrmView.text
    }
    
   
        //equationText.text = " \(a)x^2 + \(b)x + \(c)"
    
    
    @IBAction func calculateTapped(sender : AnyObject)
    {
        var a = Double((aTextField.text as NSString).doubleValue)
        var b = Double((bTextField.text as NSString).doubleValue)
        var c = Double((cTextField.text as NSString).doubleValue)
        var root1 = quadCalc.calcRoot1(a, b: b, c: c)
        var root2 = quadCalc.calcRoot2(a, b: b, c: c)
        let ans = "Root 1 = \(root1) \nRoot 2 = \(root2)"
        
        resultsTextView.text = ans
        
        //quationText.text = " \(a)x + \(b)x + \(c)"
        albl.text = "\(a)x"
        blbl.text = "\(b)x"
        clbl.text = "\(c)"
    }
    @IBAction func textChanged(sender : AnyObject)
    {
        aTextField.resignFirstResponder()
        bTextField.resignFirstResponder()
        cTextField.resignFirstResponder()
        ///rt1TF.resignFirstResponder()
        //rt2TF.resignFirstResponder()
        refreshUI()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func viewTapped(sender : AnyObject) {
        resultsTextView.resignFirstResponder()
        //equationText.resignFirstResponder()
        albl.resignFirstResponder()
        blbl.resignFirstResponder()
        clbl.resignFirstResponder()
    }
}
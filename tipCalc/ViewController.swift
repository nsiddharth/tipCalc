//
//  ViewController.swift
//  tipCalc
//
//  Created by Siddharth Narayanan on 9/8/14.
//  Copyright (c) 2014 Siddharth Narayanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var tipLabel : UILabel
    
    @IBOutlet var totalLabel : UILabel
    
    
    @IBOutlet var billField : UITextField
    
    @IBOutlet var tipSlider : UISlider
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.keyboardType = UIKeyboardType.DecimalPad
        
        
        
        
        
        tipLabel.text="$0.00"
        totalLabel.text="0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender : AnyObject) {
       
        view.endEditing(true)
    }
    
    @IBAction func onSlide(sender : AnyObject) {
        calculate()
        
    }
    
    func calculate(){
        var tipVal:Float = tipSlider.value
        
        var percentage = tipVal*100
        
        tipLabel.text="\(percentage) %"
        
        var bill = NSString (string:billField.text).floatValue
        
        
        var total = bill + percentage*bill/100
        
        
        totalLabel.text="your total is: \(total)"
    
    
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will appear")
        var defaults = NSUserDefaults.standardUserDefaults()
        var tipPercent = defaults.integerForKey("default_tip")
        tipSlider.value = Float (tipPercent)/100
        calculate()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("view did appear")
        var defaults = NSUserDefaults.standardUserDefaults()
        var tipPercent = defaults.integerForKey("default_tip")
        tipSlider.value = Float (tipPercent)/100
        calculate()
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        println("view will disappear")
        var defaults = NSUserDefaults.standardUserDefaults()
        var tipPercent = defaults.integerForKey("default_tip")
         tipSlider.value = Float (tipPercent)/100
        calculate()
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("view did disappear")
        var defaults = NSUserDefaults.standardUserDefaults()
        var tipPercent = defaults.integerForKey("default_tip")
         tipSlider.value = Float (tipPercent)/100
        calculate()
    }


    
}


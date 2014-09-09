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
        
        tipLabel.text="Test text"
        totalLabel.text=" "
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender : AnyObject) {
        updateValues()
        view.endEditing(true)
    }
    
    @IBAction func onSlide(sender : AnyObject) {
        
        var tipVal:Float = tipSlider.value
        
        var percentage = tipVal*100
        
        tipLabel.text="\(percentage)"
        
        var bill = NSString (string:billField.text).floatValue

        
        var total = bill + percentage*bill/100
        
        
        totalLabel.text="\(total)"
        
    }

    func updateValues(){
    
        
        
        
        
    }
    
}


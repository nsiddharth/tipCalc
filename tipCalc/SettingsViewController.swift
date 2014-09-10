//
//  SettingsViewController.swift
//  tipCalc
//
//  Created by Siddharth Narayanan on 9/9/14.
//  Copyright (c) 2014 Siddharth Narayanan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var defaultTipPercent : UISegmentedControl
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func getDefaultTip(sender : AnyObject) {
        
         var defaults = NSUserDefaults.standardUserDefaults()
        var index = defaultTipPercent.selectedSegmentIndex
        var tipPercent: Int=0
        switch(index){
        
        case 0:
            tipPercent = 15
            break
        case 1:
            tipPercent = 20
            break
        case 2:
            tipPercent = 25
            break
        default:
            break
            
            
        }
        
        defaults.setInteger(tipPercent, forKey: "default_tip")
        defaults.synchronize()
        
    }
    
    
    
    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  Calculator
//
//  Created by CNTT on 3/26/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var lblResult: UILabel!
    var firstTouchFlag = true
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Button's action
    
    @IBAction func btnPress(_ sender: UIButton) {
        
        let num2 = sender.currentTitle!
        if sender.currentTitle != "0"{
            
            if firstTouchFlag{
                lblResult.text = num2
                firstTouchFlag = false
            }
            else{
                let num1 = lblResult.text!
                lblResult.text = (num1 + num2)
            }
        }
        
        
    }
   
    
}


//
//  ViewController.swift
//  tippy
//
//  Created by  Alex Sumak on 12/15/16.
//  Copyright © 2016  Alex Sumak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var peopleControl: UISegmentedControl!
    @IBOutlet weak var personPayLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
  
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentage = [0.18, 0.2, 0.25]
        let numPeople = [1,2,3,4]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let tax = Double(bill*0.08)
        let total = bill + tip + tax
        
        
        let personPay = total/Double(numPeople[peopleControl.selectedSegmentIndex])
        
    
        personPayLabel.text = String(format: "$%.2f", personPay)
        tipLabel.text = String(format: "$%.2f", tip)
        taxLabel.text = String(format: "$%.2f", tax)
        totalLabel.text = String(format: "$%.2f", total)
    }
 
}


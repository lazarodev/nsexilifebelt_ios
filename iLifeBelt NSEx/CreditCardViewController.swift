//
//  CreditCardViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 23/02/17.
//  Copyright © 2017 lazaro. All rights reserved.
//

import UIKit

class CreditCardViewController: UIViewController {
    
    var fromCar = 0
    var value = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sendValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0 + fromCar
            performSegue(withIdentifier: "valueGTCard", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 948 + fromCar
            performSegue(withIdentifier: "valueGTCard", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "valueGTCard" {
            if let destination = segue.destination as? GTEmployesViewController {
                destination.fromCredit = value
            }
        }
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

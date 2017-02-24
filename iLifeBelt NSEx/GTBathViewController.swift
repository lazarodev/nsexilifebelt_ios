//
//  GTBathViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 23/02/17.
//  Copyright © 2017 lazaro. All rights reserved.
//

import UIKit

class GTBathViewController: UIViewController {
    
    // variables
    var value = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sendValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0
            performSegue(withIdentifier: "valueGTBath", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 250
            performSegue(withIdentifier: "valueGTBath", sender: self)
        } else if (sender.tag == Int(3)) {
            value = 500
            performSegue(withIdentifier: "valueGTBath", sender: self)
        } else if (sender.tag == Int(4)) {
            value = 1050
            performSegue(withIdentifier: "valueGTBath", sender: self)
        } else if (sender.tag == Int(5)) {
            value = 1400
            performSegue(withIdentifier: "valueGTBath", sender: self)
        } else if (sender.tag == Int(5)) {
            performSegue(withIdentifier: "valueGTBath", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "valueBath" {
            if let destination = segue.destination as?
                GTCarViewController {
                destination.fromBath = value
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

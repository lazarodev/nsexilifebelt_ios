//
//  WaterViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 29/11/16.
//  Copyright © 2016 lazaro. All rights reserved.
//

import UIKit

class WaterViewController: UIViewController {
    
    var value = 0
    var fromBath = 0
    
    
    
    @IBAction func sendValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0 + fromBath
            performSegue(withIdentifier: "valueWater", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 10 + fromBath
            performSegue(withIdentifier: "valueWater", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "valueWater" {
            if let destination = segue.destination as? SpotViewController {
                destination.fromWater = value
            }
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

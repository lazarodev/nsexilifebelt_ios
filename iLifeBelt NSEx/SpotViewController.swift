//
//  SpotViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 29/11/16.
//  Copyright © 2016 lazaro. All rights reserved.
//

import UIKit

class SpotViewController: UIViewController {

    var value = 0
    var fromWater = 0
    
    
    @IBAction func sendValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0 + fromWater
            performSegue(withIdentifier: "valueSpot", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 15 + fromWater
            performSegue(withIdentifier: "valueSpot", sender: self)
        } else if (sender.tag == Int(3)) {
            value = 27 + fromWater
            performSegue(withIdentifier: "valueSpot", sender: self)
        } else if (sender.tag == Int(3)) {
            value = 32 + fromWater
            performSegue(withIdentifier: "valueSpot", sender: self)
        } else if (sender.tag == Int(4)) {
            value = 36 + fromWater
            performSegue(withIdentifier: "valueSpot", sender: self)
        } else if (sender.tag == Int(5)) {
            value = 36 + fromWater
            performSegue(withIdentifier: "valueSpot", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "valueSpot" {
            if let destination = segue.destination as? CarViewController {
                destination.fromSpot = value
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

//
//  GTHouseBreakViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 23/02/17.
//  Copyright © 2017 lazaro. All rights reserved.
//

import UIKit

class GTHouseBreakViewController: UIViewController {
    
    var fromEmploy = 0
    var value = 0
    
    
    @IBAction func sendValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0 + fromEmploy
            performSegue(withIdentifier: "valueGTBreak", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 944 + fromEmploy
            performSegue(withIdentifier: "valueGTBreak", sender: self)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "valueGTBreak" {
            if let destination = segue.destination as? GTSalaViewController {
                destination.fromBreak = value
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

//
//  GTEmployesViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 23/02/17.
//  Copyright © 2017 lazaro. All rights reserved.
//

import UIKit

class GTEmployesViewController: UIViewController {
    
    var fromCredit = 0
    var value = 0
    
    
    @IBAction func sendValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0 + fromCredit
            performSegue(withIdentifier: "valueGTEmploy", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 950 + fromCredit
            performSegue(withIdentifier: "valueGTEmploy", sender: self)
        } else if (sender.tag == Int (3)) {
            value = 2500 + fromCredit
            performSegue(withIdentifier: "valueGTEmploy", sender: self)
        } else if (sender.tag == Int(4)) {
            value = 4155 + fromCredit
            performSegue(withIdentifier: "valueGTEmploy", sender: self)
        } else if (sender.tag == Int(5)) {
            value = 6560 + fromCredit
            performSegue(withIdentifier: "valueGTEmploy", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "valueGTEmploy" {
            if let destination = segue.destination as? GTHouseBreakViewController {
                destination.fromEmploy = value
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

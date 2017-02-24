//
//  GTVisaViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 23/02/17.
//  Copyright © 2017 lazaro. All rights reserved.
//

import UIKit

class GTVisaViewController: UIViewController {
    
    var value = 0
    var fromTV = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sendValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0 + fromTV
            performSegue(withIdentifier: "valueGTVisa", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 5348 + fromTV
            performSegue(withIdentifier: "valueGTVisa", sender: self)
    }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "valueGTVisa" {
            if let destination = segue.destination as? GTResultViewController {
                destination.fromVisa = value
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

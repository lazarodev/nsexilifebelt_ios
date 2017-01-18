//
//  StudyViewController.swift
//  iLifeBelt NSEx
//
//  Created by Fernando Lazaro on 29/11/16.
//  Copyright © 2016 lazaro. All rights reserved.
//

import UIKit

class StudyViewController: UIViewController {
    
    var value = 0
    var fromFloor = 0
    
    @IBAction func finalValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 0 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(3)) {
            value = 22 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(4)) {
            value = 22 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(5)) {
            value = 22 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(6)) {
            value = 38 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(7)) {
            value = 38 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(8)) {
            value = 38 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(9)) {
            value = 52 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(10)) {
            value = 52 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(11)) {
            value = 72 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(12)) {
            value = 72 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        } else if (sender.tag == Int(13)) {
            value = 38 + fromFloor
            performSegue(withIdentifier: "valueStudy", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "valueStudy" {
            if let destination = segue.destination as? ResultViewController {
                destination.fromStudy = value
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

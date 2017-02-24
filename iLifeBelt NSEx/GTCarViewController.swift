//
//  GTCarViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 23/02/17.
//  Copyright © 2017 lazaro. All rights reserved.
//

import UIKit

class GTCarViewController: UIViewController {
    
    var fromBath = 0
    var value = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sendValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0 + fromBath
            performSegue(withIdentifier: "valueGTCar", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 750 + fromBath
            performSegue(withIdentifier: "valueGTCar", sender: self)
        } else if (sender.tag == Int(3)) {
            value = 1890 + fromBath
            performSegue(withIdentifier: "valueGTCar", sender: self)
        } else if (sender.tag == Int(4)) {
            value = 3174 + fromBath
            performSegue(withIdentifier: "valueGTCar", sender: self)
        } else if (sender.tag == Int(5)) {
            value = 4616 + fromBath
            performSegue(withIdentifier: "valueGTCar", sender: self)
        } else if (sender.tag == Int(6)) {
            value = 6025 + fromBath
            performSegue(withIdentifier: "valueGTCar", sender: self)
        } else if (sender.tag == Int(7)) {
            value = 7850 + fromBath
            performSegue(withIdentifier: "valueGTCar", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "valueGTCar" {
            if let destination = segue.destination as? CreditCardViewController {
                destination.fromCar = value
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

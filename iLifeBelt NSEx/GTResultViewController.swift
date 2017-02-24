//
//  GTResultViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 23/02/17.
//  Copyright © 2017 lazaro. All rights reserved.
//

import UIKit
import CoreData

class GTResultViewController: UIViewController {
    
    var fromVisa = 0
    var result = ""
    
    
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var etName: UITextField!
    @IBOutlet weak var etEmail: UITextField!
    
    
    @IBOutlet weak var save: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveResult(_ sender: AnyObject) {
        
        // store core data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "User", into: context)
        
        if (fromVisa <= 749) {
            result = "D2"
        } else if (fromVisa >= 750 && fromVisa <= 5999) {
            result = "D1"
        } else if (fromVisa >= 6000 && fromVisa <= 10499) {
            result = "C3"
        } else if (fromVisa >= 10500 && fromVisa <= 17999) {
            result = "C2"
        } else if (fromVisa >= 18000 && fromVisa <= 23999) {
            result = "C1"
        } else if (fromVisa >= 24000 && fromVisa <= 26249) {
            result = "B"
        } else if (fromVisa >= 26250) {
            result = "A"
        }
        
        newUser.setValue(etName, forKey: "username")
        newUser.setValue(etEmail, forKey: "email")
        newUser.setValue(result, forKey: "result")
        
        do {
            try context.save()
        } catch {
            // Process error
        }
    }
    
    @IBAction func verifyText(_ sender: AnyObject) {
        
        if validateText(text: etName.text!) {
            save.isEnabled = false
        } else {
            save.isEnabled = true
        }
        
    }
    
    func validateText(text: String) -> Bool {
        var hello = false
        
        // test textfield name
        if text == "" {
            hello = true
        }
        return hello
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if (fromVisa <= 749) {
            result = "D2"
            lbResult.text = result
        } else if (fromVisa >= 750 && fromVisa <= 5999) {
            result = "D1"
            lbResult.text = result
        } else if (fromVisa >= 6000 && fromVisa <= 10499) {
            result = "C3"
            lbResult.text = result
        } else if (fromVisa >= 10500 && fromVisa <= 17999) {
            result = "C2"
            lbResult.text = result
        } else if (fromVisa >= 18000 && fromVisa <= 23999) {
            result = "C1"
            lbResult.text = result
        } else if (fromVisa >= 24000 && fromVisa <= 26249) {
            result = "B"
            lbResult.text = result
        } else if (fromVisa >= 26250) {
            result = "A"
            lbResult.text = result
        }
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

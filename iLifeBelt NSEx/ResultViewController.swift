//
//  ResultViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 29/11/16.
//  Copyright © 2016 lazaro. All rights reserved.
//

import UIKit
import CoreData

class ResultViewController: UIViewController {
    
    //variables
    var fromStudy = 0
    var result = ""
    
    //widgets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var save: UIButton!
    
    @IBAction func btnSave(_ sender: AnyObject) {
        
        // Storing core data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "User", into: context)
        
        if (fromStudy >= 0 && fromStudy <= 32) {
            result = "E"
        } else if (fromStudy >= 33 && fromStudy <= 79) {
            result = "D"
        } else if (fromStudy >= 80 && fromStudy <= 104) {
            result = "D+"
        } else if (fromStudy >= 105 && fromStudy <= 127) {
            result = "C-"
        } else if (fromStudy >= 128 && fromStudy <= 154) {
            result = "C"
        } else if (fromStudy >= 155 && fromStudy <= 192) {
            result = "C+"
        } else if (fromStudy >= 193) {
            result = "A/B"
        }
        
        newUser.setValue(nameTextField.text, forKey: "username")
        newUser.setValue(emailTextField.text, forKey: "email")
        newUser.setValue(result, forKey: "result")
        
        do {
            
            try context.save()
            print("Hey there! SAVED")
        } catch {
            //  PROCESS ERROR
        }
        
    }
    
    @IBAction func btnCancel(_ sender: AnyObject) {
    }
    
    @IBAction func verifyText(_ sender: AnyObject) {
        
        if validateText(text: nameTextField.text!) {
            save.isEnabled = false
        } else {
            save.isEnabled = true
        }
        
    }
    
    func validateText(text: String) -> Bool {
        var hello = false
    
    //test textfield name
    if text == "" {
    hello = true
    }
    return hello
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if (fromStudy >= 0 && fromStudy <= 32) {
            result = "E"
            resultLabel.text = result
        } else if (fromStudy >= 33 && fromStudy <= 79) {
            result = "D"
            resultLabel.text = result
        } else if (fromStudy >= 80 && fromStudy <= 104) {
            result = "D+"
            resultLabel.text = result
        } else if (fromStudy >= 105 && fromStudy <= 127) {
            result = "C-"
            resultLabel.text = result
        } else if (fromStudy >= 128 && fromStudy <= 154) {
            result = "C"
            resultLabel.text = result
        } else if (fromStudy >= 155 && fromStudy <= 192) {
            result = "C+"
            resultLabel.text = result
        } else if (fromStudy >= 193) {
            result = "A/B"
            resultLabel.text = result
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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

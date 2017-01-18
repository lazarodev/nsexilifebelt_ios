//
//  RoomViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 29/11/16.
//  Copyright © 2016 lazaro. All rights reserved.
//

import UIKit

/*
 Clase que maneja los widgets y valores de la vista de ROOM
 */
class RoomViewController: UIViewController {
    
    //variables
    // se declara la variable implicitamente de tipo intero
    // a su vez se inicializa con el valor 0 (recordemos que es un variable)
    var value = 0
    
    /*
        Funcion que realizara cada widget de la vista.
        En este caso de botones en el cual se la ha asiganado un valor
        desde la vista (Main.storyBoard) con un tag que funciona como un ID.
        */
    @IBAction func sendValue(_ sender: AnyObject) {
        
        if (sender.tag == Int(1)) {
            value = 0
            performSegue(withIdentifier: "valueRoom", sender: self)
        } else if (sender.tag == Int(2)) {
            value = 0
            performSegue(withIdentifier: "valueRoom", sender: self)
        } else if (sender.tag == Int(3)) {
            value = 0
            performSegue(withIdentifier: "valueRoom", sender: self)
        } else if (sender.tag == Int(4)) {
            value = 0
            performSegue(withIdentifier: "valueRoom", sender: self)
        } else if (sender.tag == Int(5)) {
            value = 8
            performSegue(withIdentifier: "valueRoom", sender: self)
        } else if (sender.tag == Int(6)) {
            value = 8
            performSegue(withIdentifier: "valueRoom", sender: self)
        } else if (sender.tag == Int(7)) {
            value = 14
            performSegue(withIdentifier: "valueRoom", sender: self)
        }
        
    }
    
    /*
        Metodo nativo para enviar data de una clase a otra con un identificador TAG
        */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "valueRoom" {
            if let destination = segue.destination as? BathViewController {
                destination.fromRoom = value
            }
        }
        
    }

    /*
        Metodo nativo cuando la vista es mostrada.
     */
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    /*
        Metodo nativo para manejar de manera correcta la memoria de esta clase.
        */
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

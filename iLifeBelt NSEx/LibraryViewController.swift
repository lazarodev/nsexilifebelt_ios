//
//  LibraryViewController.swift
//  iLifeBelt NSEx
//
//  Created by Community One on 30/11/16.
//  Copyright © 2016 lazaro. All rights reserved.
//

import UIKit
import CoreData

/*
 Esta clase contiene la informacion de cada uno de los usuarios.
 Obtenemos la data de la DB y luego se muestra.
 Con la opcion de poder eliminar cada registro.
 */
class LibraryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Declaramos esta variable de tipo UITableView
    @IBOutlet weak var listTable: UITableView!
    
    var users : [User] = []
    
    /*
        Metodo nativo cuando carga la vista de la clase.
      */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTable.dataSource = self
        listTable.delegate = self

        //Sotring core data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        request.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(request)
            
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    if let username = result.value(forKey: "username") as? String {
                        //usernameArr.append(username)
                        print(username)
                    }
                    if let resultado = result.value(forKey: "result") as? String {
                        //resultadoArr.append(resultado)
                        print(resultado)
                    }
                    if let email = result.value(forKey: "email") as? String {
                        print(email)
                    }
                }
                //print(usernameArr)
                //print(resultadoArr)
            }
        } catch {
            //PROCESS ERROR
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //get the data from core data
        getData()
        
        //reload the table view
        listTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let user = users[indexPath.row]
        
        cell.textLabel?.text = user.username!
        //cell.textLabel?.text = user.result!
        
        return cell
    }
    
    /*
        Funcion para obtener la data que se encuentra en la base de datos.
    */
    func getData() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
        users = try context.fetch(User.fetchRequest())
        }
        catch {
            print("Fetching failed")
        }
    }
    /*
        Funcionalidad del tableview. Le pasamos los usuarios registrados
        y la opcion de poder eliminar a cada registro.
      */
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        if editingStyle == .delete {
            let task = users[indexPath.row]
            context.delete(task)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do {
            users = try context.fetch(User.fetchRequest())
            }
            catch {
                print ("Fetching failed")
            }
        }
        listTable.reloadData()
        
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

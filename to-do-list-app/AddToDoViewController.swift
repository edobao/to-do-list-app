//
//  AddToDoViewController.swift
//  to-do-list-app
//
//  Created by Apple on 7/28/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    //"talking" to the other VC
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titletextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    
    @IBAction func addTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                return
    }
        let context = appDelegate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
        
        toDo.name = titletextField.text
        toDo.important = importantSwitch.isOn
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
        
        
        
    }
//        let toDo = ToDo()
//
//        if let titleText = titletextField.text {
//            toDo.name = titleText
//            toDo.important = importantSwitch.isOn
//        }
//  //update toDos array with new object
//        previousVC.toDos.append(toDo)
//        previousVC.tableView.reloadData()
//
//        navigationController?.popViewController(animated: true)
        //moves backward to the other VC
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


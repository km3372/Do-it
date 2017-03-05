//
//  CreateTaskViewController.swift
//  Do it
//
//  Created by kenneth moody on 3/2/17.
//  Copyright © 2017 Ken Moody. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIInputViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwich: UISwitch!
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let task = Task()
        
        task.name = taskNameTextField.text!
        task.important = importantSwich.isOn
        
        // Add new to array in prevouos viewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    

}

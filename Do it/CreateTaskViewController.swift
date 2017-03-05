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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwich.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // PoP Back
        
        
        navigationController!.popViewController(animated: true)
        
    }
    
    

}

//
//  CreateTaskViewController.swift
//  HealthHabitsApp
//
//  Created by Игорь Крысин on 05.01.2024.
//

import UIKit

class CreateTaskViewController: UIViewController {
        weak var saveUserToDoDelegate: SaveToDoUserDelegate?
    
    var watchTodo: WatchToDoTVC?
    var myArray: [UserToDoModel] = []

    @IBOutlet weak var userTextFieldToDo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    @IBAction func saveUserToDo(_ sender: Any) {
        
        if let todo = userTextFieldToDo.text {
            if !todo.isEmpty {
                let todo = UserToDoModel(name: todo, time: "0")
                (myArray.append(todo))
               
                //saveUserToDoDelegate?.saveUserToDo(todo: todo)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toWatchToDoVC" {
            let ctrl = segue.destination as! WatchToDoTVC
            ctrl.vc = self
        }
    }
    
    @IBAction func back(_ sender: Any) {
        
    }
    
}

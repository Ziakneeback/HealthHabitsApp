//
//  CreateTaskViewController.swift
//  HealthHabitsApp
//
//  Created by Игорь Крысин on 05.01.2024.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    weak var saveUserToDoDelegate: SaveToDoUserDelegate?

    @IBOutlet weak var userTextFieldToDo: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveUserToDo(_ sender: Any) {
        print(2222)
        if let todo = userTextFieldToDo.text {
            if !todo.isEmpty {
                let todo = UserToDoModel(name: todo, time: "0")
                saveUserToDoDelegate?.saveUserToDo(todo: todo)
            }
        }
        
        var vc = WatchToDoTVC()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "WatchToDoTVC") as! WatchToDoTVC
        guard let navigator = navigationController else { return }
        navigator.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func back(_ sender: Any) {
        
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

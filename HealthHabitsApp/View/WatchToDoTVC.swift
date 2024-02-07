//
//  WatchToDoTVC.swift
//  HealthHabitsApp
//
//  Created by Игорь Крысин on 05.01.2024.
//

import UIKit

class WatchToDoTVC: UITableViewController {
    
    
    
    var vc = CreateTaskViewController()
    
    weak var delegate: SaveToDoUserDelegate?
    
    @IBOutlet weak var blueView: UIView!
    
    var arrayUserToDo = [UserToDoModel]()
    
//    override func viewWillAppear(_ animated: Bool) {
//        vc.saveUserToDoDelegate = self
//    }
//    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("myARRAY in watchToDo: " , vc.myArray)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vc.myArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoTVCCell") as? ToDoTVCCell else { return UITableViewCell()}
        vc.myArray[indexPath.row].currentIndex = indexPath
        let todo = vc.myArray[indexPath.row]
        cell.cellData(todo: todo)
        return cell
    }
    
    
    
}

//extension WatchToDoTVC: SaveToDoUserDelegate {
//    
//    func saveUserToDo(todo: UserToDoModel) {
//        print("saveExtension working")
//        arrayUserToDo.append(todo)
//        tableView.reloadData()
//    }
//    
//    
//}


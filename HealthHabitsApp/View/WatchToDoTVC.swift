//
//  WatchToDoTVC.swift
//  HealthHabitsApp
//
//  Created by Игорь Крысин on 05.01.2024.
//

import UIKit

class WatchToDoTVC: UITableViewController {
    
    var arrayUserToDo = [UserToDoModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUserToDo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoTVCCell") as? ToDoTVCCell else { return UITableViewCell() }
        arrayUserToDo[indexPath.row].currentIndex = indexPath
        let todo = arrayUserToDo[indexPath.row]
        cell.cellData(todo: todo)
        return cell
    }
    
}

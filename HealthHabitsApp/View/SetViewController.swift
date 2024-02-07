//
//  SetViewController.swift
//  HealthHabitsApp
//
//  Created by Игорь Крысин on 09.01.2024.
//

import UIKit

class SetViewController: UITableViewController {

    
    var arrayUserToDo = [UserToDoModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
//         self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return arrayUserToDo.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SetView", for: indexPath) as? SetViewCell else { return UITableViewCell() }
        
        cell.moveTimerCellDelegat = self
         //Configure the cell...

        return cell
    }
}


extension SetViewController: SetViewControllerDelegate {
    func takeTimeCell(timer: UserToDoModel) {
        guard let todoIndex = timer.currentIndex?.item else { return }
        arrayUserToDo[todoIndex].name = timer.name
    }
    
    
}

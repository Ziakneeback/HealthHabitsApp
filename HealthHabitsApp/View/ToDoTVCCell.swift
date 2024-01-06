//
//  ToDoTVCCell.swift
//  HealthHabitsApp
//
//  Created by Игорь Крысин on 05.01.2024.
//

import UIKit

class ToDoTVCCell: UITableViewCell {

    @IBOutlet weak var someTodo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellData(todo: UserToDoModel) {
        someTodo.text = todo.name
        //сюда же сложить время
    }

}

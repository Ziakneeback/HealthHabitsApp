//
//  Delegate.swift
//  HealthHabitsApp
//
//  Created by Игорь Крысин on 05.01.2024.
//

import Foundation

protocol SaveToDoUserDelegate: AnyObject {
    func saveUserToDo(todo: UserToDoModel)
}

protocol PushNameToDoDelegate: AnyObject {
    func pushNameToDo(todo: UserToDoModel)
}



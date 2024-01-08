//
//  ViewController.swift
//  HealthHabitsApp
//
//  Created by Жанибек Асылбек on 05.01.2024.
//

import UIKit

protocol MainViewControllerDelegate {
    func setTime(time: String)
}


class MainViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var timeLabel: UILabel!
    
    var totalTime = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = totalTime
    }


}

extension MainViewController: MainViewControllerDelegate{
    func setTime(time: String) {
        totalTime = time 
    }
}

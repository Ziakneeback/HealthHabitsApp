//
//  StopWatchViewController.swift
//  HealthHabitsApp
//
//  Created by Жанибек Асылбек on 05.01.2024.
//

import UIKit

class StopWatchViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var StartButton: UIButton!
    
    // MARK: - Variables
    
    var hours = 0
    var minutes = 0
    var seconds = 0
    
    var timer = Timer()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(count), userInfo: nil, repeats: true)
    }
    
    
    @objc fileprivate func count() {
        seconds += 1
        if seconds < 10{
            secondLabel.text = "0\(seconds)"
        }else{
            secondLabel.text = "\(seconds)"
        }
        
        if seconds == 59 {
            minutes += 1
            seconds = 0
            if minutes < 10{
                minuteLabel.text = "0\(minutes)"
            }else{
                minuteLabel.text = "\(minutes)"
            }
        }
        
        if minutes == 59 {
            hours += 1
            minutes = 0
            seconds = 0
            if hours < 10{
                hourLabel.text = "0\(hours)"
            }else{
                hourLabel.text = "\(hours)"
            }
        }
        
        if hours == 24 {
            timer.invalidate()
        }
        
        
    }
    
    

}

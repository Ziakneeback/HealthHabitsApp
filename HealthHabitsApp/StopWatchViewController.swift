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
    
    @IBOutlet weak var saveToDo: UIButton!
    
    @IBOutlet weak var nameTimer: UILabel!
    
    
    // MARK: - Variables
    
    var hours = 0
    var minutes = 0
    var seconds = 0
    var counter = 0
    var timer = Timer()

    let stopImage = UIImage(systemName: "stop")?.withTintColor(.black, renderingMode: .alwaysOriginal)
    let playImage = UIImage(named: "play")
    
    
    var delegateTime: MainViewControllerDelegate!
    
    var totalTime = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func start(_ sender: Any) {
        if counter == 0{
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(count), userInfo: nil, repeats: true)
        counter = 1
        
        StartButton.setImage(stopImage, for: .normal)
        
    }else{
        
        timer.invalidate()
        
        counter = 0
        
        StartButton.setImage(playImage, for: .normal)
        
    }
        
    }
    
    
    @objc fileprivate func count() {
            seconds += 1
           
            if seconds == 59 {
                minutes += 1
                seconds = 0
            }
            
            if minutes == 59 {
                hours += 1
                minutes = 0
                seconds = 0
            }
            
            if hours == 24 {
                timer.invalidate()
            }
            
            
            secondLabel.text =  seconds < 10 ? "0\(seconds)" : "\(seconds)"
            minuteLabel.text =  minutes < 10 ? "0\(minutes)" : "\(minutes)"
            hourLabel.text =  hours < 10 ? "0\(hours)" : "\(hours)"
            
        
        
    }
    
    @IBAction func doneRecording(_ sender: Any) {
        timer.invalidate()
        
        StartButton.setImage(playImage, for: .normal)
        
        totalTime = "\(hours):\(minutes):\(seconds)"
        
        //delegateTime.setTime(time: totalTime)
    }
    

}

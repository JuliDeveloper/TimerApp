//
//  TimeCounter.swift
//  TimerApp
//
//  Created by Julia Romanenko on 12.09.2022.
//

import Foundation

class TimeCounter {
    var counter = 3
    var timer: Timer?
    
    func startTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(updateCounter),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
        }
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}

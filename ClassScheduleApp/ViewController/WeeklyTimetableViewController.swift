//
//  WeeklyTimetableViewController.swift
//  ClassScheduleApp
//
//  Created by kusumoto on 2018/11/18.
//

import UIKit

class WeeklyTimetableViewController: UIViewController {
    
    // margin of timetable grid
    let leftMargin = 40.0
    let topMargin = 40.0
    let rightMargin = 20.0
    let bottomMargin = 20.0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func columnCount() -> Int {
        var dayCount = 5
        if UserDefaults.standard.bool(forKey: "existsSaturday") { dayCount += 1 }
        if UserDefaults.standard.bool(forKey: "existsSunday") { dayCount += 1 }
        
        return dayCount
    }
    
    func columnWidth() -> CGFloat {
        let gridViewWidth = Double(self.view.frame.width) - (leftMargin + rightMargin)
        return CGFloat(gridViewWidth / Double(self.columnCount()))
    }
    
    func placeDayLabels() {
        for dayIndex in 0..<(self.columnCount()) {
            let x = CGFloat(Double(dayIndex) * Double(self.columnWidth()))
            let dayLabel: UILabel = UILabel(frame: CGRect(x: x, y: 0, width: self.columnWidth(), height: 40))
        }
    }
    
    func placePeriodLabels() {
        let periodCount = UserDefaults.standard.integer(forKey: "periodCount")
    }
    
    func drawGrid() {
        let periodCount = UserDefaults.standard.integer(forKey: "periodCount")
        
        var dayCount = 5
        if UserDefaults.standard.bool(forKey: "existsSaturday") { dayCount += 1 }
        if UserDefaults.standard.bool(forKey: "existsSunday") { dayCount += 1 }
        
        // place recognizer cells on grid
        for periodIndex in 0..<(periodCount - 1) {
            for dayIndex in 0..<(dayCount - 1) {
                // needs computing cell width method
                // needs computing cell height method
            }
        }
    }

}

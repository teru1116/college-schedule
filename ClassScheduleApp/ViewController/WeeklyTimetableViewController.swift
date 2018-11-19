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
    
    override func viewDidAppear(_ animated: Bool) {
        self.drawGridAndLabels()
    }
    
    func drawGridAndLabels() {
        self.placeDayLabels()
        self.placePeriodLabels()
        self.drawGrid()
    }
    
    func placeDayLabels() {
        for dayIndex in 0..<(self.columnCount()) {
            let x = leftMargin + Double(dayIndex) * Double(self.columnWidth())
            let dayLabel: UILabel = UILabel(frame: CGRect(x: x, y: 0.0, width: self.columnWidth(), height: 40.0))
            
            dayLabel.text = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"][dayIndex]
            dayLabel.textAlignment = .center
            
            self.view.addSubview(dayLabel)
        }
    }
    
    func columnCount() -> Int {
        return UserDefaults.standard.bool(forKey: "existsSaturday") ? UserDefaults.standard.bool(forKey: "existsSaturdayAndSunday") ? 7 : 6 : 5
    }
    
    func columnWidth() -> Double {
        let gridViewWidth = Double(self.view.frame.width) - (leftMargin + rightMargin)
        return gridViewWidth / Double(self.columnCount())
    }
    
    func gridViewWidth() -> Double {
        return Double(self.view.frame.width) - (leftMargin + rightMargin)
    }
    
    func placePeriodLabels() {
        for periodIndex in 0..<(self.rowCount()) {
            let y = topMargin + Double(periodIndex) * Double(self.rowHeight())
            let dayLabel: UILabel = UILabel(frame: CGRect(x: 0.0, y: y, width: 40.0, height: self.rowHeight()))
            
            dayLabel.text = String(periodIndex + 1)
            dayLabel.textAlignment = .center
            
            self.view.addSubview(dayLabel)
        }
    }
    
    func rowCount() -> Int {
        return UserDefaults.standard.integer(forKey: "periodCount")
    }
    
    func rowHeight() -> Double {
        return self.gridViewHeight() / Double(self.rowCount())
    }
    
    func gridViewHeight() -> Double {
        return Double(self.view.frame.height) - (topMargin + bottomMargin)
    }
    
    func drawGrid() {
        let columnWidth = self.columnWidth()
        let gridViewWidth = self.gridViewWidth()
        let rowHeight = self.rowHeight()
        let gridViewHeight = self.gridViewHeight()
        
        for periodIndex in 0..<(self.columnCount() + 1) {
            for dayIndex in 0..<(self.rowCount() + 1) {
                
                // draw grid horizontal line
                let horizontalY = Double(periodIndex) * rowHeight + topMargin
                let horizontalLine = UIView(frame: CGRect(x: leftMargin, y: horizontalY, width: gridViewWidth, height: 1.0))
                horizontalLine.backgroundColor = UIColor.black
                self.view.addSubview(horizontalLine)
                
                // draw grid vertical line
                let verticalX = Double(dayIndex) * columnWidth + leftMargin
                let verticalLine = UIView(frame: CGRect(x: verticalX, y: topMargin, width: 1.0, height: gridViewHeight))
                verticalLine.backgroundColor = UIColor.black
                self.view.addSubview(verticalLine)
            }
        }
    }

}

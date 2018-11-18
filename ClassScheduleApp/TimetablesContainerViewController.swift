//
//  TimetablesContainerViewController.swift
//  ClassScheduleApp
//
//  Created by kusumoto on 2018/11/18.
//

import UIKit

class TimetablesContainerViewController: UIViewController {

    @IBOutlet weak var weeklyVCContainerView: UIView!
    @IBOutlet weak var dailyVCContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentDidChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.weeklyVCContainerView.isHidden = false
            self.dailyVCContainerView.isHidden = true
        case 1:
            self.weeklyVCContainerView.isHidden = true
            self.dailyVCContainerView.isHidden = false
        default:
            break
        }
    }

}

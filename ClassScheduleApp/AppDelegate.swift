//
//  AppDelegate.swift
//  ClassScheduleApp
//
//  Created by kusumoto on 2018/11/18.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // first launch
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if !launchedBefore {
            // initial setup
            UserDefaults.standard.set(5, forKey: "periodCount")
            UserDefaults.standard.set(false, forKey: "existsSaturday")
            UserDefaults.standard.set(false, forKey: "existsSaturdayAndSunday")
            
            UserDefaults.standard.set(true, forKey: "launchedBefore")
        }
        
        return true
    }

}


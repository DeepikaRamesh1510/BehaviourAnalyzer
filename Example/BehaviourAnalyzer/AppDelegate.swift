//
//  AppDelegate.swift
//  BehaviourAnalyzer
//
//  Created by DeepikaRamesh1510 on 10/01/2020.
//  Copyright (c) 2020 DeepikaRamesh1510. All rights reserved.
//

import UIKit
import BehaviourAnalyzer

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        AnalyticsLogger.register([DefaultAnalyticsProvider()])
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}


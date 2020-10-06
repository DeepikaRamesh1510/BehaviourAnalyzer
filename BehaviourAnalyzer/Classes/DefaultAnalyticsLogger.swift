//
//  AnalyticsLogger.swift
//  BehaviourAnalyzer
//
//  Created by Deepika on 02/10/20.
//

import Foundation

public struct DefaultAnalyticsProvider: AnalyticsProvider {
   
    public init() {}
    public var name: String = "AnalyticsLogger"
    
    public func trackEvent(_ event: AnalyticsEvent, parameters: [String : Any], userProperties: [String : String]) {
        print("🚀 Tracking Event 🚀\nName: \(event.name)")
        if parameters.isNotEmpty {
            print("Parameter: \(parameters)")
        }
        if userProperties.isNotEmpty {
            print("Parameter: \(userProperties)")
        }
    }
    
    public func trackScreen(withName screenName: String, parameters: [String : Any]) {
        print("🚀 Tracking Screen 🚀\nName: \(screenName)")
        if parameters.isNotEmpty {
            print("Parameter: \(parameters)")
        }
    }
    
    public func setUserId(_ userId: String) {
        print("🧑🏻‍💼 userId: \(userId)")
    }
}

extension Collection {
    var isNotEmpty: Bool {
        return !self.isEmpty
    }
}

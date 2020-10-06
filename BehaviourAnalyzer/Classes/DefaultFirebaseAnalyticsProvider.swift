//
//  DefaultFirebaseAnalyticsProvider.swift
//  BehaviourAnalyzer
//
//  Created by Deepika on 06/10/20.
//

import FirebaseAnalytics

public struct DefaultFirebaseAnalyticsProvider: AnalyticsProvider {
    public init() {}
    public var name: String = "FirebaseAnalytics"
    
    public func trackEvent(_ event: AnalyticsEvent, parameters: [String : Any], userProperties: [String : String]) {
        Analytics.logEvent(event.name, parameters: parameters)
    }
    
    public func trackScreen(withName screenName: String, parameters: [String : Any]) {
        
    }
    
    public func setUserId(_ userId: String) {
        
    }
}

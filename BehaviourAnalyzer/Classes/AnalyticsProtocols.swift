//
//  AnalyticsProtocols.swift
//  BehaviourAnalyzer
//
//  Created by Deepika on 02/10/20.
//

import Foundation

public typealias AnalyticsParameters = [String: Any]
public typealias AnalyticsUserProperties = [String: String]

public protocol AnalyticsEvent {
    var name: String { get }
    var parameters: AnalyticsParameters { get }
    var userProperties: AnalyticsUserProperties { get }
}

public protocol AnalyticsScreen {
    var name: String { get }
    var parameters: AnalyticsParameters { get }
}

public protocol AnalyticsProvider {
    var name: String { get }
    
    func trackEvent(_ event: AnalyticsEvent,
                  parameters: [String: Any],
                  userProperties: [String: String])
    
    func trackScreen(withName screenName: String, parameters: [String : Any])
    func setUserId(_ userId: String)
}

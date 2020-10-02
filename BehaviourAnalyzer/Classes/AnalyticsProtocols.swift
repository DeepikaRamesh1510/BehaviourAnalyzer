//
//  AnalyticsProtocols.swift
//  BehaviourAnalyzer
//
//  Created by Deepika on 02/10/20.
//

import Foundation

public typealias AnalyticsParameters = [AnyHashable: Any]
public typealias AnalyticsUserProperties = [AnyHashable: String]

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
                  parameters: [AnyHashable: Any],
                  userProperties: [AnyHashable: String])
    
    func trackScreen(withName screenName: String, parameters: [AnyHashable : Any])
    func setUserId(_ userId: String)
}

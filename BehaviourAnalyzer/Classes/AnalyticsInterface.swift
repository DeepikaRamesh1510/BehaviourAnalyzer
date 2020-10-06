//
//  AnalyticsInterface.swift
//  BehaviourAnalyzer
//
//  Created by Deepika on 02/10/20.
//

import Foundation

public enum AnalyticsLogger {
    
    private static var providers: [AnalyticsProvider] = []
    
    public static func register(_ providers: [AnalyticsProvider]) {
        for provider in providers {
            Self.providers.append(provider)
        }
    }
    
    public static func trackEvent(_ event: AnalyticsEvent) {
        for provider in Self.providers {
            provider.trackEvent(event, parameters: event.parameters, userProperties: event.userProperties)
        }
    }
    
    public static func setUserId(_ userId: String) {
        for provider in Self.providers {
            provider.setUserId(userId)
        }
    }
}

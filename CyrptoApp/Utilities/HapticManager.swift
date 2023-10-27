//
//  HapticManager.swift
//  CyrptoApp
//
//  Created by FFK on 7.10.2023.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}

//
//  UIApplication.swift
//  CyrptoApp
//
//  Created by FFK on 4.10.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

//
//  String.swift
//  CyrptoApp
//
//  Created by FFK on 12.10.2023.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}

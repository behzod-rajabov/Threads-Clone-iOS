//
//  Item.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

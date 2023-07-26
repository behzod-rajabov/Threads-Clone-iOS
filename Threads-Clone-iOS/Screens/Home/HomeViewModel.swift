//
//  HomeViewModel.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 23/07/23.
//

import SwiftUI

@Observable
class HomeViewModel {
    var threads: [String] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            for i in 0..<20 {
                self.threads.append("Final thought: The road to success is rarely a straight line. Embrace the twists and turns, learn from the detours, and keep moving forward. Your perseverance will lead you to extraordinary places you never thought possible. 🌟")
            }
        }
    }
    
}

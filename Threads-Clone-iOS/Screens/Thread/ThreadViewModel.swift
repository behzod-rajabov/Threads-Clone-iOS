//
//  ThreadViewModel.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 23/07/23.
//

import SwiftUI

@Observable
class ThreadViewModel {
    var thread: String = ""
    var isLike: Bool = false
    
    init(thread: String = "", isLike: Bool = false){
        self.thread = thread
        self.isLike = isLike
    }
    
}

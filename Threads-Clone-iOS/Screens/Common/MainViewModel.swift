//
//  MainViewModel.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 23/07/23.
//

import SwiftUI

@Observable
class MainViewModel {
    var selectedTab: Tab = .home
    var showNewThreadView: Bool = false
}

enum Tab {
    case home
    case search
    case newThread
    case activity
    case profile
}

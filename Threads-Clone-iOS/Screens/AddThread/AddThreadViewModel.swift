//
//  AddThreadViewModel.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 23/07/23.
//

import SwiftUI

@Observable
class AddThreadViewModel {
    var whoCanReply: CanReplyThreadType = .follower
    var threads: [NewThreadModel] = [NewThreadModel()]
    
}

struct NewThreadModel: Hashable {
    var id = UUID().uuidString
    var text: String = ""
    var media: [String] = []
}

enum CanReplyThreadType: String, CaseIterable {
    case follower = "Your followers"
    case following = "Profiles you follow"
    case mentioned = "Mentioned only"
}

enum Field: Hashable {
    case fieldId(String)
}

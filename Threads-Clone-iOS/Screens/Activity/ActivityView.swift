//
//  ActivityView.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        NavigationStack {
            List {
                VStack {
                    Text("Activity")
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Activity")
            .toolbarTitleDisplayMode(.inlineLarge)
        }
    }
}

#Preview {
    ActivityView()
}

//
//  SearchView.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            List {
                VStack {
                    Text("Search")
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Search")
            .toolbarTitleDisplayMode(.inlineLarge)
        }
    }
}

#Preview {
    SearchView()
}

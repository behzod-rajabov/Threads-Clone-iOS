//
//  HomeView.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
                VStack {
                    ForEach(Range(0...20)) { index in
                        Rectangle()
                            .frame(height: 100)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}

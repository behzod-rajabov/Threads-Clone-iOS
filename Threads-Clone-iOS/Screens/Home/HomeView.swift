//
//  HomeView.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import SwiftUI

struct HomeView: View {
    @State var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.threads, id: \.self) { thread in
                    NavigationLink(value: UUID().uuidString) {
                        ThreadItem(viewModel: ThreadViewModel(thread: thread))
                    }
                    .buttonStyle(PlainButtonStyle())
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets())
                }
            }
            .listStyle(PlainListStyle())
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image(.logoHome)
                        .resizable()
                        .frame(width: 28, height: 32)
                }
            }
            .toolbarTitleDisplayMode(.inline)
            .navigationDestination(for: String.self) { value in
                ThreadDetailView()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    HomeView()
}

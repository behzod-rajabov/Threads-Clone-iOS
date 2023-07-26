//
//  MainView.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import SwiftUI

struct MainView: View {
    @State var viewModel = MainViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $viewModel.selectedTab) {
                HomeView()
                    .tag(Tab.home)
                SearchView()
                    .tag(Tab.search)
                AddThreadView()
                    .tag(Tab.newThread)
                ActivityView()
                    .tag(Tab.activity)
                ProfileView()
                    .tag(Tab.profile)
            }
            
            Spacer(minLength: 0)
            HStack(spacing: 0) {
                VStack {
                    Image(viewModel.selectedTab == .home ? .homeTabFill : .homeTab)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 32, height: 32)
                        .foregroundStyle(viewModel.selectedTab == .home ? .foreground : .gray700)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.background)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        viewModel.selectedTab = .home
                    }
                }
                
                VStack {
                    Image(viewModel.selectedTab == .search ? .searchTabFill : .searchTab)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 32, height: 32)
                        .foregroundStyle(viewModel.selectedTab == .search ? .foreground : .gray700)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.background)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        viewModel.selectedTab = .search
                    }
                }
                
                VStack {
                    Image(.newThreadTab)
                        .resizable()
                        .frame(width: 32, height: 32)
                        //.foregroundStyle(.gray700)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.background)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        viewModel.showNewThreadView.toggle()
                    }
                }
                
                VStack(spacing: 0) {
                    Image(viewModel.selectedTab == .activity ? .activityTabFill : .activityTab)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 32, height: 32)
                        .foregroundStyle(viewModel.selectedTab == .activity ? .foreground : .gray700)
                    // badge
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundStyle(.red)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                // for badge
                .padding(.top, 5)
                .background(Color.background)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        viewModel.selectedTab = .activity
                    }
                }
                
                VStack {
                    Image(viewModel.selectedTab == .profile ? .profileTabFill : .profileTab)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 32, height: 32)
                        .foregroundStyle(viewModel.selectedTab == .profile ? .foreground : .gray700)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.background)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        viewModel.selectedTab = .profile
                    }
                }
            }
            .frame(height: 56)
            .background(Color.background)
            
        }
        //.tint(.foreground)
        .sheet(isPresented: $viewModel.showNewThreadView, content: {
            AddThreadView()
        })
    }
}



#Preview {
    MainView()
}

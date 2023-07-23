//
//  MainView.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedTab: Tab = .home
    @State var showNewThreadView: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $selectedTab) {
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
                    Image(selectedTab == .home ? .homeTabFill : .homeTab)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 32, height: 32)
                        .foregroundStyle(selectedTab == .home ? .foreground : .gray700)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.background)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        selectedTab = .home
                    }
                }
                
                VStack {
                    Image(selectedTab == .search ? .searchTabFill : .searchTab)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 32, height: 32)
                        .foregroundStyle(selectedTab == .search ? .foreground : .gray700)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.background)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        selectedTab = .search
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
                        showNewThreadView.toggle()
                    }
                }
                
                VStack {
                    Image(selectedTab == .activity ? .activityTabFill : .activityTab)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 32, height: 32)
                        .foregroundStyle(selectedTab == .activity ? .foreground : .gray700)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.background)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        selectedTab = .activity
                    }
                }
                
                VStack {
                    Image(selectedTab == .profile ? .profileTabFill : .profileTab)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 32, height: 32)
                        .foregroundStyle(selectedTab == .profile ? .foreground : .gray700)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.background)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        selectedTab = .profile
                    }
                }
            }
            .frame(height: 60)
            .background(Color.background)
            
        }
        .sheet(isPresented: $showNewThreadView, content: {
            AddThreadView()
        })
    }
}

enum Tab {
    case home
    case search
    case newThread
    case activity
    case profile
}

#Preview {
    MainView()
}

//
//  ThreadDetailView.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 23/07/23.
//

import SwiftUI

struct ThreadDetailView: View {
    @State var viewModel = ThreadViewModel()
    
    var body: some View {
        List {
            VStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    
                    HStack(spacing: 12) {
                        Image(.avatar)
                            .resizable()
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                        
                        Text("behzodbek.rajabov")
                            .font(.system(size: 16, weight: .semibold))
                            .tint(.foreground)
                        
                        Spacer()
                        
                        Text("36m")
                            .font(.system(size: 14))
                            .foregroundStyle(Color.gray900)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .renderingMode(.template)
                                .font(.system(size: 16))
                                .foregroundStyle(Color.foreground)
                        }
                        
                    }
                    
                    
                    Text("💡 Final thought: The road to success is rarely a straight line. Embrace the twists and turns, learn from the detours, and keep moving forward. Your perseverance will lead you to extraordinary places you never thought possible. 🌟")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.foreground)
                        .padding(.top, 4)
                    
                    HStack(spacing: 12) {
                        Button {
                            withAnimation {
                                viewModel.isLike.toggle()
                            }
                        } label: {
                            Image(viewModel.isLike ? .likeFill : .like)
                                .renderingMode(viewModel.isLike ? .original : .template)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(Color.foreground)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(.message)
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 24, height: 24)
                                .foregroundStyle(Color.foreground)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(.repost)
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 24, height: 24)
                                .foregroundStyle(Color.foreground)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(.send)
                                .resizable()
                                .renderingMode(.template)
                                .frame(width: 24, height: 24)
                                .foregroundStyle(Color.foreground)
                        }
                        
                    }
                    .padding(.vertical, 8)
                    
                    Text("3 replies • 2 likes")
                        .font(.system(size: 16))
                        .foregroundStyle(.gray900)
                    
                    
                }
                .padding(16)
                .buttonStyle(BorderlessButtonStyle())
                
                Divider()
                
            }
            .buttonStyle(PlainButtonStyle())
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets())
            
            ForEach(Range(0...20)) { index in
                NavigationLink(value: UUID().uuidString) {
                    ThreadItem(viewModel: ThreadViewModel(thread: "Comment #\(index)"))
                }
                .buttonStyle(PlainButtonStyle())
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
            }
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Thread")
        .toolbarTitleDisplayMode(.inline)
    }
}

#Preview {
    ThreadDetailView()
}

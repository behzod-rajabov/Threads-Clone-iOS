//
//  ThreadItem.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 23/07/23.
//

import SwiftUI

struct ThreadItem: View {
    
    @State var viewModel = ThreadViewModel()
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                
                VStack(spacing: 6) {
                    Image(.avatar)
                        .resizable()
                        .frame(width: 36, height: 36)
                        .clipShape(Circle())
                    
                        RoundedRectangle(cornerRadius: 1)
                            .foregroundStyle(.divider)
                            .frame(width: 2)
                            .frame(maxHeight: .infinity)
                    
                    Image(.avatar)
                        .resizable()
                        .frame(width: 16, height: 16)
                        .clipShape(Circle())
                    
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack(spacing: 12) {
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
                    
                    
                    Text(viewModel.thread)
                        .font(.system(size: 15))
                        .foregroundStyle(Color.foreground)
                    
                    HStack(spacing: 12) {
                        Button {
                            withAnimation {
                                viewModel.isLike.toggle()
                            }
                        } label: {
                            Image(viewModel.isLike ? .likeFill : .like)
                                .resizable()
                                .renderingMode(viewModel.isLike ? .original : .template)
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
                    .padding(.vertical, 12)
                    
                    Text("3 replies • 2 likes")
                        .font(.system(size: 16))
                        .foregroundStyle(.gray900)
                    
                    
                }
                
            }
            .padding(16)
            .buttonStyle(BorderlessButtonStyle())
            
            Divider()
        }
    }
}

#Preview {
    ThreadItem()
}

//
//  AddThreadView.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import SwiftUI

struct AddThreadView: View {
    
    @State var viewModel = AddThreadViewModel()
    @State var inFocus: Field?
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Divider()
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(viewModel.threads, id: \.self){ thread in
                            NewThreadItem(id: thread.id, inFocus: $inFocus) {
                                withAnimation {
                                    if viewModel.threads.count == 1 {
                                        viewModel.threads[0].text = ""
                                    } else {
                                        viewModel.threads.removeAll { item in
                                            thread.id == item.id
                                        }
                                    }
                                }
                            }
                        }
                        
                        Button {
                            viewModel.threads.append(NewThreadModel())
                        } label: {
                            HStack(spacing: 16) {
                                Image(.avatar)
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .foregroundStyle(.gray700)
                                    .clipShape(Circle())
                                    .opacity(0.5)
                                Text("Add to thred")
                                    .font(.system(size: 16))
                                    .foregroundStyle(.gray500)
                            }
                            .padding(.leading, 5)
                        }

                        
                    }
                    .padding(16)
                }
                .listStyle(PlainListStyle())
                
                Spacer()
                HStack {
                    Menu("\(viewModel.whoCanReply.rawValue) can reply") {
                        ForEach(CanReplyThreadType.allCases, id:\.rawValue) { type in
                            Button {
                                viewModel.whoCanReply = type
                            } label: {
                                Text(type.rawValue)
                            }
                        }
                    }
                    .font(.system(size: 14))
                    .foregroundStyle(.gray700)
                    .padding()
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Post")
                            .tint(.blue)
                            .font(.system(size: 16, weight: .bold))
                            .padding()
                    }
                    
                }
            }
            .navigationTitle("Add thread")
            .toolbarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddThreadView()
}

//
//  AddThreadView.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import SwiftUI

struct AddThreadView: View {
    
    @State var text: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    VStack {
                        TextEditor(text: $text)
                            .background(Color.orange)
                        
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(PlainListStyle())
                
                Spacer()
                HStack {
                    Menu("Your followers can reply") {
                        Button {
                            
                        } label: {
                            Text("Your followers")
                        }
                        Button {
                            
                        } label: {
                            Text("Profiles you follow")
                        }
                        Button {
                            
                        } label: {
                            Text("Mentioned only")
                        }

                    }
                    .font(.system(size: 14, weight: .medium))
                    .tint(.gray)
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

//
//  newThreadItem.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 23/07/23.
//

import SwiftUI

struct NewThreadItem: View {
    
    let id: String
    @Binding var inFocus: Field?
    
    @State var text: String = ""
    @FocusState var isFocused: Bool
    
    var onRemoveThread: (() -> Void)? = nil
    
    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            
            VStack(spacing: 12) {
                Image(.avatar)
                    .resizable()
                    .frame(width: 34, height: 34)
                    .foregroundStyle(.gray700)
                    .clipShape(Circle())
                RoundedRectangle(cornerRadius: 1)
                    .foregroundStyle(.divider)
                    .frame(width: 2)
                    .frame(maxHeight: .infinity)
            }
            
            VStack(alignment: .leading, spacing: 0) {
                
                HStack {
                    Text("behzodbek.rajabov")
                        .font(.system(size: 16, weight: .medium))
                        .tint(.foreground)
                        .padding(.leading, 8)
                    
                    if !text.isEmpty {
                        Spacer()
                        Button {
                            text = ""
                            onRemoveThread?()
                        } label: {
                            Image(systemName: "xmark")
                                .renderingMode(.template)
                                .font(.system(size: 12))
                                .foregroundStyle(.gray900)
                        }
                        
                    }
                }
                
                ZStack(alignment: .topLeading) {
                    if text.isEmpty {
                        Text("Start a thread...")
                            .font(.system(size: 16))
                            .padding(.top, 7)
                            .padding(.bottom, -12)
                            .padding(.leading, 6)
                    }
                    TextEditor(text: $text)
                        .font(.system(size: 16))
                        .foregroundStyle(Color.foreground)
                        .frame(minHeight: 36)
                        .opacity(isFocused ? 1.0 : 0.7)
                        .focused($isFocused)
                        .id(Field.fieldId(id))
                        .onChange(of: isFocused) { _, _ in
                            inFocus = .fieldId(id)
                        }
                }
                .padding(.leading, 4)
                
//                    if isFocused {
                    Button {
                        
                    } label: {
                        Image(systemName: "paperclip")
                            .renderingMode(.template)
                            .font(.system(size: 16))
                            .foregroundStyle(.gray900)
                    }
//                    }
                
            }
            
        }
    }
}

#Preview {
    NewThreadItem(id: "", inFocus: .constant(Field.fieldId("")))
}

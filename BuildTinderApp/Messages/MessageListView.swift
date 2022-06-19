//
//  MessageListView.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/19.
//

import SwiftUI

struct MessageListView: View {
    
    @ObservedObject var vm: MessageListVM = MessageListVM()
    
    @State private var searchText: String = ""
    @State private var isEdting: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                TextField("search bar", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color.textFieldBG)
                    .cornerRadius(8)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.textPrimary)
                                .font(.system(size: 20, weight: .bold))
                                .padding(.leading, 4)
                            
                            Spacer()
                        }
                        
                    
                    )
                .padding(.horizontal, 10)
                .onTapGesture(perform: {
                    self.isEdting = true
                })
                .animation(.easeIn(duration: 0.25))
                
                if isEdting {
                    Button(action: {
                        self.isEdting = false
                        self.searchText = ""
                        self.endEditing(true)
                    }, label: {
                        Text("Cancel")
                    })
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    .animation(.easeIn(duration: 0.25))
                }
                
            }
            
            Spacer()
        }
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
    }
}

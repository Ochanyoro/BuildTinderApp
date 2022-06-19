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
        ScrollView {
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
                
                Spacer().frame(height: 14)
                
                ZStack {
                    VStack {
                        ForEach(vm.messagePreviews.filter({ searchText.isEmpty ? true : displayPreview($0) }), id: \.self) { preview in
                            NavigationLink(destination: ChatView(person: preview.person), label: {
                                MessageRowView(preview: preview)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .animation(.easeIn(duration: 0.25))
                            .transition(.slide)
                        }
                    }
                    if isEdting && searchText.isEmpty{
                        Color.white.opacity(0.5)
                    }
                }
                
                Spacer()
            }
        }
        .modifier(HideNavigationView())
    }
    
    
    func displayPreview(_ preview: MessagePreview) -> Bool{
        // person name
        if preview.person.name.contains(searchText) { return true }

        // last message sent
        if preview.lastMessage.contains(searchText) { return true }

        // person bio
        if preview.person.bio.contains(searchText) { return true }
        
        return false

    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MessageListView()
        }
    }
}

//
//  TabBarButtonView.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import SwiftUI

enum TabBarButtonType: String{
    case fire = "flame.fill"
    case star = "star.fill"
    case message = "message.fill"
    case profile = "person.fill"
}

struct TabBarButtonView: View {
    
    var type: TabBarButtonType
    var action: () -> Void
    
    var body: some View {
        Button(action: { action() }, label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.gray.opacity(0.5))
        })
    }
}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .star){
            print("Test")
        }
    }
}

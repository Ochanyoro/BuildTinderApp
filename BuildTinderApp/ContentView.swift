//
//  ContentView.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/17.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var mng: AppStateManager = AppStateManager()
    
    var body: some View {
        MainView()
            .environmentObject(mng)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
}

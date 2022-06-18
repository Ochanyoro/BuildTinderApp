//
//  AppStateManager.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import Foundation

class AppStateManager: ObservableObject{
    
    @Published var selectedTab: TabBarButtonType = .fire
}

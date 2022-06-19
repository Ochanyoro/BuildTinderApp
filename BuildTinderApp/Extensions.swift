//
//  Extensions.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import SwiftUI






extension View{
    @ViewBuilder
    func `if`<Transform: View>(
        _ condition: Bool,
        transform: (Self) -> Transform
    ) -> some View{
        if condition{
            transform(self)
        } else {
            self
        }
    }
}


extension Color{
    static let textPrimary = Color.gray.opacity(0.9)
    static let textSecondary = Color.gray.opacity(0.6)
    static let textTitle   = Color.black.opacity(0.8)
    static let defaultBackground = Color(.systemGray6).opacity(0.35)
    static let textFieldBG = Color(.systemGray6)
    
}

extension View {
    func endEditing(_ force: Bool) {
        UIApplication.shared.windows.forEach { $0.endEditing(force)}
    }
}

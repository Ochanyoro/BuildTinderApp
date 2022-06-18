//
//  PrifileSwipePromo.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/18.
//

import SwiftUI

struct PrifileSwipePromo: View {
    
    var action: () -> Void
    
    var body: some View {
        VStack(spacing: 0){
            TabView{
                VStack(spacing: 9){
                    Spacer()
                    Text("Get Tinder Gold")
                        .font(.system(size: 26, weight: .semibold))
                    Text("see who likes you & more!")
                }
                .padding(.top, 20)
                .padding(.bottom, 64)
                
                VStack(spacing: 9){
                    Spacer()
                    Text("Get Matches Faster")
                        .font(.system(size: 26, weight: .semibold))
                    Text("Boost your profile once a month!")
                }
                .padding(.bottom,64)
                
                VStack(spacing: 9){
                    Spacer()
                    Text("Increase Your Chances")
                        .font(.system(size: 26, weight: .semibold))
                    Text("Boost your profile once a month!")
                }
                .padding(.bottom, 64)
                
                
            }
            .tabViewStyle(PageTabViewStyle())
            
            Button(action: { action() }, label: {
                Text("MY TINDER PLUS")
                    .foregroundColor(.red)
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.vertical, 20)
                    .padding(.horizontal, 50)
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(color: Color.gray.opacity(0.2), radius: 10)
            })
            .padding(.bottom, 30)
        }
    }
}

struct PrifileSwipePromo_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            PrifileSwipePromo{
                print("test")
            }
        }
        .frame(height: 400)
    }
}

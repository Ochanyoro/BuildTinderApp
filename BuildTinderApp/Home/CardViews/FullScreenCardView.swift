//
//  FullScreenCardView.swift
//  BuildTinderApp
//
//  Created by 大和田一裕 on 2022/06/21.
//

import SwiftUI

struct FullScreenCardView: View {
    
    var person: Person
    @Binding var fullscreenMode: Bool
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(showsIndicators: false){
                VStack (spacing: 0) {
                    CardImageScroller(
                        person: person,
                        fullscreenMode: $fullscreenMode)
                    .frame(width: screen.width, height: screen.height * 0.6)
                    
                    HStack {
                        VStack (alignment: .leading){
                            HStack {
                                Text(person.name)
                                    .font(.system(size: 32, weight: .heavy))
                                
                                Text(String(person.age))
                                    .font(.system(size: 32, weight: .light))
                                
                            Spacer()
                                
                            }
                            .opacity(0.75)
                            
                            Text("\(person.distance) miles away")
                                .font(.system(size: 18, weight: .medium))
                                .opacity(0.75)
                        }
                        .padding([.horizontal, .top], 16)
                        
                        Button(action: { }, label: {
                            Image(systemName: "arrow.down.circle.fill")
                                .font(.system(size: 42))
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                        .padding(.trailing, 16)
                        .offset(y: -40)
                    }
                    
                    Spacer().frame(height: 26)
                    
                    HStack {
                        Text(person.bio)
                            .font(.system(size: 18, weight: .medium))
                            .lineLimit(20)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                            .opacity(0.75)
                            .padding(.horizontal, 16)
                        
                        Spacer()
                    }
                    
                    Spacer().frame(height: 32)
                    
                    VStack(spacing: 24) {
                        Button(action: { }, label: {
                            VStack(spacing: 8) {
                                Text("SHARE \(person.name.uppercased())'S PROFILE")
                                    .font(.system(size: 16, weight: .medium))
                                
                                Text("SEE WHAT A FRIEND THINKS")
                                    .font(.system(size: 14, weight: .medium))
                            }
                            .opacity(0.9)
                        })
                        
                        Button(action: { }, label: {
                            Text("PEOPLE \(person.name.uppercased())")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(.black)
                                .opacity(0.75)
                        })
                    }
                    
                    Spacer().frame(height:200)
                }
            }
            
            Text("TEst")
        }
    }
}

struct FullScreenCardView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCardView(person: Person.example, fullscreenMode: .constant(true))
    }
}

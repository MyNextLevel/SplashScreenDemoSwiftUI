//
//  SplashView.swift
//  SplashScreenDemo
//
//  Created by Abbos Donaboev on 04/11/23.
//

import SwiftUI

struct SplashView: View {
    @State var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    let background = Color(red: 0.08, green: 0.1, blue: 0.15)
    let hintColor = Color(red: 0.92, green: 0.92, blue: 0.96)
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                background.ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("app.icon").font(.system(size: 80)).foregroundColor(.red).padding()
                    Text("Sleep Sounds").font(Font.system( size: 34,weight: .bold,design: .rounded)).foregroundColor(.white)
                    Spacer()
                    VStack {
                        Text("Created by")
                          .font(
                            Font.system( size: 12,weight: .medium)
                    
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(hintColor.opacity(0.6))
                          .frame(alignment: .center)
                        Text("Designluch")
                          .font(
                            Font.system( size: 17,weight: .semibold)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(hintColor.opacity(0.6))
                          .frame( alignment: .center)
                    }
                    
                }.scaleEffect(size).opacity(opacity).onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1
                    }
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    
    }
}

#Preview {
    SplashView()
}

//
//  ContentView.swift
//  SplashScreenDemo
//
//  Created by Abbos Donaboev on 04/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("Content view").foregroundColor(.white).font(.system(size: 30)).bold().padding()
        }
    }
}

#Preview {
    ContentView()
}

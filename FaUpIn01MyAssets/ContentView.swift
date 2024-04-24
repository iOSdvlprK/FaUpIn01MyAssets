//
//  ContentView.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .asset
    
    enum Tab {
        case asset
        case recommend
        case alert
        case setting
    }
    
    var body: some View {
        TabView(selection: $selection) {
            AssetView()
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("Assets")
                }
                .tag(Tab.asset)
            Color.blue
                .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("Recommend")
                }
                .tag(Tab.recommend)
            Color.yellow
                .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Alert")
                }
                .tag(Tab.alert)
            Color.red
                .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
                .tag(Tab.setting)
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.configureWithTransparentBackground()
            appearance.backgroundColor = UIColor(white: 1, alpha: 0.5)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    ContentView()
}

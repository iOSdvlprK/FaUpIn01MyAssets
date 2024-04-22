//
//  NavigationBarWithButton.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/22/24.
//

import SwiftUI

struct NavigationBarWithButton: ViewModifier {
    var title: String = ""
    
    func body(content: Content) -> some View {
        return content
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text(title)
                        .font(.system(size: 24, weight: .bold))
                        .padding()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(
                        action: {
                            print("Add assets button tapped")
                        },
                        label: {
                            Image(systemName: "plus")
                            Text("Add Assets")
                                .font(.system(size: 12))
                        }
                    )
                    .tint(.black) // .accentColor(.black)
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithTransparentBackground()
                appearance.backgroundColor = UIColor(white: 1, alpha: 0.5)
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().compactAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
    }
}

extension View {
    func navigationBarWithButtonStyle(_ title: String) -> some View {
        return self.modifier(NavigationBarWithButton(title: title))
    }
}

#Preview {
    NavigationView {
        Color.gray.ignoresSafeArea()
            .navigationBarWithButtonStyle("My Assets")
    }
}

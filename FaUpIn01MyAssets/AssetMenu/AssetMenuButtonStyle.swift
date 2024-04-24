//
//  AssetMenuButtonStyle.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/23/24.
//

import SwiftUI

struct AssetMenuButtonStyle: ButtonStyle {
    let menu: AssetMenu
    
    func makeBody(configuration: Configuration) -> some View {
        return VStack {
            Image(systemName: menu.systemImageName)
                .resizable()
                .frame(width: 30, height: 30)
                .padding([.leading, .trailing], 10)
            Text(menu.title)
                .font(.system(size: 10, weight: .bold))
                .multilineTextAlignment(.center)
        }
        .padding()
        .foregroundStyle(.blue) // .foregroundColor(.blue)
        .background(Color.white)
//        .clipShape(RoundedRectangle(cornerRadius: 10))
        .clipShape(Circle())
    }
}

#Preview {
    HStack(spacing: 24) {
        Button("") {
            print("")
        }
        .buttonStyle(AssetMenuButtonStyle(menu: .creditScore))
        
        Button("") {
            print("")
        }
        .buttonStyle(AssetMenuButtonStyle(menu: .bankAccount))
        
        Button("") {
            print("")
        }
        .buttonStyle(AssetMenuButtonStyle(menu: .creditCard))
        
        Button("") {
            print("")
        }
        .buttonStyle(AssetMenuButtonStyle(menu: .cash))
    }
    .background(Color.gray.opacity(0.2))
}

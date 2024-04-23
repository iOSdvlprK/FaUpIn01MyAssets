//
//  AssetMenuGridView.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/23/24.
//

import SwiftUI

struct AssetMenuGridView: View {
    let menuList: [[AssetMenu]] = [
        [.creditScore, .bankAccount, .investment, .loan],
        [.insurance, .creditCard, .cash, .realEstate]
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(menuList, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(row) { menu in
                        Button("") {
                            print("'\(menu.title)' button tapped")
                        }
                        .buttonStyle(AssetMenuButtonStyle(menu: menu))
                    }
                }
            }
        }
    }
}

#Preview {
    AssetMenuGridView()
}

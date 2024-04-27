//
//  TabMenuView.swift
//  FaUpIn01MyAssets
//
//  Created by joe on 4/26/24.
//

import SwiftUI

struct TabMenuView: View {
    var tabs: [String]
    @Binding var selectedTab: Int
    @Binding var updated: CreditCardAmounts? // for red dot displayed on a tab
    
    var body: some View {
        HStack {
            ForEach(0..<tabs.count, id: \.self) { row in
                Button(action: {
                    selectedTab = row
                    UserDefaults.standard.set(true, forKey: "creditcard_update_checked: \(row)")
                }, label: {
                    VStack(spacing: 0) {
                        HStack {
                            if updated?.id == row {
                                let checked = UserDefaults.standard.bool(forKey: "creditcard_update_checked: \(row)")
                                Circle()
                                    .fill(
                                        !checked ? Color.red : Color.clear
                                    )
                                    .frame(width: 6, height: 6)
                                    .offset(x: 2, y: -8)
                            } else {
                                Circle()
                                    .fill(Color.clear)
                                    .frame(width: 6, height: 6)
                                    .offset(x: 2, y: -8)
                            }
                            
                            Text(tabs[row])
                                .font(.system(.headline))
                                .foregroundStyle(
                                    selectedTab == row ? Color.accentColor : .gray
                                )
                                .offset(x: -4, y: 0)
                        }
                        .frame(height: 52)
                        Rectangle()
                            .fill(
                                selectedTab == row ? Color.secondary : .clear
                            )
                            .frame(height: 3)
                            .offset(x: 4, y: 0)
                    }
                })
                .buttonStyle(PlainButtonStyle())
            }
        }
        .frame(height: 55)
    }
}

#Preview {
    TabMenuView(tabs: ["prev month", "this month", "next month"], selectedTab: .constant(1), updated: .constant(.currentMonth(amount: "₩10,000")))
}

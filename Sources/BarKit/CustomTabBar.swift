//
//  CustomTabBar.swift
//  BarKit
//
//  Created by Yenat Feyyisa on 6/13/25.
//

import SwiftUI

public struct CustomTabBar: View {
    @Binding var selectedTab: Int
    let tabs: [TabItem]
    var backgroundColor: Color = Color(.systemBackground)
    var selectedColor: Color = .blue
    var unselectedColor: Color = .gray
    var showTitles: Bool = true
    var showBadges: Bool = true
    var cornerRadius: CGFloat = 0
    var shadowRadius: CGFloat = 2
    var height: CGFloat = 80
    public var body: some View {
        HStack (spacing: 0) {
            ForEach(tabs, id: \.id) { tab in
                TabBarItem(
                    tab: tab,
                    isSelected: selectedTab == tab.id,
                    selectedColor: selectedColor,
                    unselectedColor: unselectedColor,
                    showTitle: showTitles,
                    showBadge: showBadges
                ) {
                    selectedTab = tab.id
                }
            }
            .frame(maxWidth: .infinity)
        }
        .frame(height: height)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
        .shadow(color: .black.opacity(0.1), radius: shadowRadius, x: 0, y: -1)
    }
}

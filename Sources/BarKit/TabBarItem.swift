//
//  TabBarItem.swift
//  BarKit
//
//  Created by Yenat Feyyisa on 6/13/25.
//

import SwiftUI

public struct TabBarItem: View {
    let tab: TabItem
    let isSelected: Bool
    let selectedColor: Color
    let unselectedColor: Color
    let showTitle: Bool
    let showBadge: Bool
    let action: () -> Void
   
   public var body: some View {
        Button {
            action()
        } label: {
            VStack(spacing: 4) {
                ZStack {
                    Image(
                        systemName: isSelected ? (
                            tab.selectedIcon ?? tab.icon
                        ) : tab.icon
                    )
                        .font(
                            .system(
                                size: 24,
                                weight: isSelected ? .semibold : .regular
                            )
                        )
                        .foregroundColor(
                            isSelected ? selectedColor : unselectedColor
                        )
                        .scaleEffect(isSelected ? 1.1 : 1.0)
                        .animation(.easeInOut(duration: 0.2), value: isSelected)
                    if showBadge, let badgeCount = tab.badgeCount, badgeCount > 0 {
                        BadgeView(count: badgeCount)
                            .offset(x: 12, y: -12)
                            .accessibilityIdentifier("Badge_\(tab.title)")
                    }
                }
                if showTitle {
                    Text(tab.title)
                        .font(.caption)
                        .foregroundStyle(
                            isSelected ? selectedColor : unselectedColor)
                        .fontWeight(isSelected ? .semibold : .regular)
                }
            }
            .padding(.vertical, 8)
        }
        .buttonStyle(.plain)
        .accessibilityIdentifier("TabItem_\(tab.title)")
    }
}

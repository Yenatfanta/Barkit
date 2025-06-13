//
//  CustomTabBarContainer.swift
//  BarKit
//
//  Created by Yenat Feyyisa on 6/13/25.
//

import SwiftUI

public struct CustomTabBarContainer<Content: View>: View {
    @State private var selectedTab = 0
    let tabs: [TabItem]
    let content: (Int) -> Content
    public init(tabs: [TabItem], content: @escaping (Int) -> Content) {
        self.tabs = tabs
        self.content = content
    }
    var backgroundColor = Color(.systemBackground)
    var selectedColor: Color = .blue
    var unselectedColor: Color = .gray
    var showTitles: Bool = true
    var showBadges: Bool = true
    var cornerRadius: CGFloat = 0
    var height: CGFloat = 80
    var shadowRadius: CGFloat = 2
    public var body: some View {
        VStack {
            content(selectedTab)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            CustomTabBar(
                selectedTab: $selectedTab,
                         tabs: tabs,
                backgroundColor: backgroundColor,
                selectedColor: selectedColor,
                unselectedColor: unselectedColor,
                showTitles: showTitles,
                showBadges: showBadges,
                cornerRadius: cornerRadius,
                shadowRadius: shadowRadius,
                height: height
            )
            .accessibilityIdentifier("CustomTabBar")
        }
    }
}


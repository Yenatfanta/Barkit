//
//  TabItem.swift
//  BarKit
//
//  Created by Yenat Feyyisa on 6/13/25.
//

import Foundation


public struct TabItem {
    let id: Int
    let icon: String
    let selectedIcon: String?
    let title: String
    let badgeCount: Int?
    init(id: Int, icon: String, selectedIcon: String? = nil, title: String, badgeCount:Int? = nil) {
        self.id = id
        self.icon = icon
        self.selectedIcon = selectedIcon
        self.title = title
        self.badgeCount = badgeCount
    }
}

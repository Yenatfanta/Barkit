//
//  CustomBarContainer+Customization.swift
//  BarKit
//
//  Created by Yenat Feyyisa on 6/13/25.
//

import Foundation
import SwiftUI

public extension CustomTabBarContainer {
    func backgroundColor(_ color: Color) -> CustomTabBarContainer {
        var copy = self
        copy.backgroundColor = color
        return copy
    }
    func selectedColor(_ color: Color) -> CustomTabBarContainer {
        var copy = self
        copy.selectedColor = color
        return copy
    }
    func unselectedColor(_ color: Color) -> CustomTabBarContainer {
        var copy = self
        copy.unselectedColor = color
        return copy
    }
    func showTitles(_ show: Bool) -> CustomTabBarContainer {
        var copy = self
        copy.showTitles = show
        return copy
    }
    func showBadges(_ show: Bool) -> CustomTabBarContainer {
        var copy = self
        copy.showBadges = show
        return copy
    }
    func cornerRadius(_ radius: CGFloat) -> CustomTabBarContainer {
        var copy = self
        copy.cornerRadius = radius
        return copy
    }
    func height(_ height: CGFloat) -> CustomTabBarContainer {
        var copy = self
        copy.height = height
        return copy
    }
    func shadowRadius(_ shadow: CGFloat) -> CustomTabBarContainer {
        var copy = self
        copy.shadowRadius = shadow
        return copy
    }
}

# BarKit
**BarKit** is a lightweight, customizable SwiftUI component library that includes a flexible `CustomTabBarContainer`, designed for projects that require custom tab bar navigation with badge support and smooth transitions.
---
## 🧩 Features 
- 🟢 Custom tab bar layout and styling
- 🟢 Badge support on tabs
- 🟢 Light and dark mode compatibility
- 🟢 Support for icons, selected state, and titles
## 📦 Installation 
You can install **BarKit** using [Swift Package Manager](https://swift.org/package-manager/).
### 📥 Add via Xcode
1. Open your Xcode project.
2. Go to **File > Add Packages**
3. Enter the following URL in the search bar: https://github.com/Yenatfanta/Barkit.git
4. Choose the latest version and click **Add Package**
### 📦 Add via `Package.swift`:
If you're using a `Package.swift` file:
```swift
dependencies: [
 .package(url: "https://github.com/Yenatfanta/Barkit.git", from "1.0.0")
]
```
Then add "BarKit" to your target dependecies:
```swift
targets: [
  .target(
    name: "YourApp",
    dependencies: ["BarKit"]
)
]
```
---
## 🧱 Components

### `CustomTabBarContainer`

This is the main container that holds:
- Tab configuration via `[TabItem]`
- A content closure that switches based on selected tab ID

```swift
CustomTabBarContainer(tabs: demoTabs) { tabId in
    Text("Content for tab \(tabId)")
}
```
### `TabItem`
A model representing each tab with: 
```swift
struct TabItem: Identifiable {
    let id: Int
    let icon: String
    let selectedIcon: String?
    let title: String
    let badgeCount: Int?
}
```
---
## 🎯 Usage Example
```swift
import SwiftUI
import BarKit

struct ContentView: View {
    let tabs = [
        TabItem(
            id: 0,
            icon: "house",
            selectedIcon: "house.fill",
            title: "Home",
            badgeCount: nil
        ),
        TabItem(
            id: 1,
            icon: "magnifyingglass",
            title: "Search"
        ),
        TabItem(
            id: 2,
            icon: "heart",
            selectedIcon: "heart.fill",
            title: "Favorites",
            badgeCount: 3
        ),
        TabItem(
            id: 3,
            icon: "person",
            selectedIcon: "person.fill",
            title: "Profile",
            badgeCount: 1
        )
    ]
    var body: some View {
        
        CustomTabBarContainer(tabs: tabs) { selectedTab in
            Group {
                switch selectedTab {
                case 0:
                    HomeView()
                case 1:
                    SearchView()
                case 2:
                    FavoritesView()
                case 3:
                    ProfileView()
                default:
                    HomeView()
                }
            }
        }
        .backgroundColor(Color.brown.opacity(0.7))
        .selectedColor(.orange)
        .unselectedColor(.white)
        .cornerRadius(20)
        .shadowRadius(5)
        .height(90)
        .accessibilityIdentifier("CustomTabBar")
    }
}
```
---
## 📄 License
MIT License -- free for personal and commercial use.
---
## ✍ Author
Yenatfanta Feyyisa
Lead iOS Developer

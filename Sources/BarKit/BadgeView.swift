//
//  BadgeView.swift
//  BarKit
//
//  Created by Yenat Feyyisa on 6/13/25.
//

import SwiftUI

struct BadgeView: View {
    let count: Int
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.red)
                .frame(width: 18, height: 18)
            Text("\(count)")
                .font(.caption2)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    BadgeView(count: 3)
}

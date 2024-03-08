//
//  CircleView.swift
//  MyFirstIosApp
//
//  Created by 비니루 on 2023.12.01.
//

import SwiftUI

struct CircleView: View {
    let bodyColor: Color
    let bodySize: CGFloat
    
    var body: some View {
        Circle()
            .frame(width: bodySize)
            .foregroundStyle(bodyColor)
            .shadow(color: bodyColor.opacity(0.3), radius: 7, x: 10, y: 10)
    }
}

#Preview {
    CircleView(bodyColor: .mint, bodySize: 100)
}

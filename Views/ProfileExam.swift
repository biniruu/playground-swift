//
//  Profile.swift
//  MyFirstIosApp
//
//  Created by 비니루 on 2024.1.13.
//

import SwiftUI

struct ProfileExam: View {
    let colors: [Color] = [.yellow, .mint, .pink, .purple]
    
    var body: some View {
        Image("profile")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200)
            .clipShape(.circle)
            .shadow(color: .green, radius: 10, x: 10, y: 10)
        
        VStack {
            Text("biniruu")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.orange)
            
            Text("Cherry Banana")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .padding(.bottom, 0.1)
            
            Text("Lotte Mart")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.black.opacity(0.7))
        }
        .padding(.bottom, 30)
        
        ZStack {
            Capsule()
                .frame(width: 200, height: 45)
                .foregroundStyle(.linearGradient(colors: [.pink, .blue], startPoint: .leading, endPoint: .trailing))
            
            Text("View More")
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .padding(.bottom, 50)
        
        VStack(alignment: .leading, content: {
            Text("My Github Page")
            
            Divider()
                .padding(.vertical, 3)
            
            Text("biniruu@gmail.com")
                .tint(.black)
        })
        .padding(.init(top: 0, leading: 20, bottom: 50, trailing: 20))
        
        
        HStackLayout(spacing: 20) {
            ForEach(colors, id: \.self) { color in
                Circle()
                    .frame(width: 50)
                    .foregroundStyle(color)
                    .shadow(color: color.opacity(0.3), radius: 7, x: 10, y: 10)
            }
        }
    }
}

#Preview {
    ProfileExam()
}

//
//  Profile.swift
//  MyFirstIosApp
//
//  Created by 비니루 on 2023.11.28.
//

import SwiftUI

struct Profile: View {
    enum BodyColor {
        case yellow
        case mint
        case pink
        case purple
        
        var color: Color {
            switch self {
                case .yellow:
                    return .yellow
                case .mint:
                    return .mint
                case .pink:
                    return .pink
                case .purple:
                    return .purple
            }
        }
    }
    
    enum BodySize: CGFloat {
        case small = 30
        case medium = 50
        case large = 100
    }
    
    enum BodyShadow {
        case color(BodyColor)
        case radius(CGFloat)
        case x(CGFloat)
        case y(CGFloat)
    }
    
    enum User {
        case name(String)
        case profileThumbnail(String)
        case email(String)
    }
    
    private let colors: [BodyColor] = [.yellow, .mint, .pink, .purple]
    var name: String
    var profileThumbnail: String
    var email: String
    
    @State private var onSheet = false
    
    var body: some View {
        VStack {
            Image(profileThumbnail)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .clipShape(.circle)
                .shadow(color: .pink.opacity(0.3) ,radius: 10, x: 10, y: 10)
            
            VStack {
                Text(name)
                    .font(.title)
                    .bold()
                    .foregroundColor(.black.opacity(0.9))
                
                Text("Swift Coding Class")
                    .font(.headline)
                    .bold()
                    .foregroundColor(.gray)
                    .padding(.bottom, 0.1)
                
                Text("Frontend Developer")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black.opacity(0.7))
            }
            .padding(.bottom, 30)
            
            ZStack {
                Capsule()
                    .frame(width: 200, height: 45)
                    .foregroundStyle(.linearGradient(colors: [.pink, .blue], startPoint: .leading, endPoint: .trailing))
                    .shadow(color: .pink.opacity(0.3), radius: 10, x: 10, y: 10)
                
                Text("View More")
                    .bold()
                    .foregroundColor(.white)
            }
            .padding(.bottom, 50)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("My Github Page")
                }
                
                Divider()
                    .padding(.vertical, 3)
                
                HStack {
                    Text(email)
                        .tint(.black)
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 50)
            
            HStack(spacing: 20, content: {
                ForEach(colors, id: \.self) { color in
                    CircleView(bodyColor: color.color, bodySize: BodySize.medium.rawValue)
                }
            })
        }
        
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    onSheet = true
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

#Preview {
    Profile(name: "This is a Name", profileThumbnail: "", email: "email@email.com")
}

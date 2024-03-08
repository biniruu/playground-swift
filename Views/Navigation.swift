//
//  ContentView.swift
//  MyFirstIosApp
//
//  Created by 비니루 on 2023.12.02.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    Profile(name: "biniruu", profileThumbnail: "profile", email: "biniruu@gmail.com")
                } label: {
                    Text("biniruu")
                }
                
                NavigationLink {
                    Profile(name: "User Inyerface", profileThumbnail: "ui", email: "ui@ui.com")
                } label: {
                    Text("User Inyerface")
                }
            }.navigationTitle("Menu")
        }
    }
}

#Preview {
    Navigation()
}

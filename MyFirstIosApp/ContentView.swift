//
//  ContentView.swift
//  MyFirstIosApp
//
//  Created by 비니루 on 2023.11.28.
//

import SwiftUI

struct User {
    var name: String
    var profileThumbnail: String
    var email: String
    
    static var dummy: User = User (name: "biniruu", profileThumbnail: "profile", email: "biniruu@gmail.com")
}

struct ContentView: View {
    @State var gyunni: User = User(name: "규니", profileThumbnail: "profile", email: "jskyun98@gmail.com")
    @State var peter: User = User(name: "피터", profileThumbnail: "profile", email: "peter@gmail.com")
                                                                  
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    Profile(name: "규니", profileThumbnail: "profile", email: "jskyun98@gmail.com")
                } label: {
                    Text("규니")
                }
                
                NavigationLink {
                    Profile(name: "피터", profileThumbnail: "profile", email: "peter@gmail.com")
                } label: {
                    Text("피터")
                }
            }
            .navigationTitle("Profiles")
        }
    }
}

#Preview {
    ContentView()
}

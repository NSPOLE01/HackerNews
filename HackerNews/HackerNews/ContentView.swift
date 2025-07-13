//
//  ContentView.swift
//  HackerNews
//
//  Created by Nikhil Polepalli on 7/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List(posts){ post in
                Text(post.title)
            }
            .navigationTitle(Text("Hacker News"))
        }
    }
}

#Preview {
    ContentView()
}

struct Post: Identifiable {
    let id: String
    let title: String
    
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hello"),
    Post(id: "3", title: "Hello")
]

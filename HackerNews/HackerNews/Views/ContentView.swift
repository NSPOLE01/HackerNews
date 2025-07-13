//
//  ContentView.swift
//  HackerNews
//
//  Created by Nikhil Polepalli on 7/13/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationStack{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle(Text("Hacker News"))
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hello"),
//    Post(id: "3", title: "Hello")
//]

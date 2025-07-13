//
//  DetailView.swift
//  HackerNews
//
//  Created by Nikhil Polepalli on 7/13/25.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


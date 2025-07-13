//
//  WebView.swift
//  HackerNews
//
//  Created by Nikhil Polepalli on 7/13/25.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

//
//  WebView.swift
//  SpaceApp
//
//  Created by athoub khalid on 01/04/1446 AH.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    
    var url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
       // let url = URL(string: "https://stellarium-web.org")
        if let url = url {
            
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
    }
}

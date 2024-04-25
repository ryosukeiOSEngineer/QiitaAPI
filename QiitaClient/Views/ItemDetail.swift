//
//  ItemDetail.swift
//  QiitaClient
//
//  Created by 冨永晃史 on 2020/02/18.
//

import SwiftUI
import WebKit

struct ItemDetail: View {
    let title: String
    let url: String

    var body: some View {
        WebView(url: URL(string: url)!)
        .navigationBarTitle(Text(title), displayMode: .inline)
    }
}

struct WebView : UIViewRepresentable {
    var url: URL

    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView(frame: .zero)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: url)
        uiView.load(req)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(title: "テスト", url: "https://www.apple.com")
    }
}

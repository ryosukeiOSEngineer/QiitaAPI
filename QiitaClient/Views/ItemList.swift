//
//  ItemList.swift
//  QiitaClient
//
//  Created by 冨永晃史 on 2020/02/18.
//

import SwiftUI

struct ItemList: View {
    @ObservedObject var fetcher = ApiFetcher()
    @State var keyword: String = ""
    @State var showingDetail = false
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search", text: $keyword) {
                    self.fetcher.fetchItems(query: self.keyword)
                }.padding(16)
                
                List(fetcher.items) { item in
                    NavigationLink(
                        destination: ItemDetail(
                            title: item.title,
                            url: item.url
                        )
                    ) {
                        ItemRow(item: item)
                    }
                }
            }
            .navigationBarTitle(Text("検索"))
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList()
    }
}

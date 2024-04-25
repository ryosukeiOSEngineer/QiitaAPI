//
//  ItemRow.swift
//  QiitaClient
//
//  Created by 冨永晃史 on 2020/02/21.
//

import SwiftUI
import URLImage

struct ItemRow: View {
    let item: Item
    
    var body: some View {
        HStack {
            URLImage(URL(string: item.user.profileImageUrl)!) { proxy in
                proxy.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
            }.frame(width: 60.0, height: 60.0)

            Text(item.title)
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: Item(
            id: "d040cf8b2d15bd7e507d",
            title: "[Angular] Angular アプリの構成をみる",
            body: "Angular に関する自身の勉強の復習がてらの備忘録記事｡",
            url: "https://qiita.com/ksh-fthr/items/d040cf8b2d15bd7e507d",
            user: User(
                profileImageUrl: "https://qiita-user-profile-images.imgix.net/https%3A%2F%2Fqiita-image-store.s3.amazonaws.com%2F0%2F193342%2Fprofile-images%2F1500888159?ixlib=rb-1.2.2&auto=compress%2Cformat&lossless=0&w=300&s=9a22e880d804d67db66a33ac2e7671b5"
            )
        ))
    }
}

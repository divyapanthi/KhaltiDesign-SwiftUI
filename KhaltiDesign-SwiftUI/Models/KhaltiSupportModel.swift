//
//  KhaltiSupportModel.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 10/03/2023.
//

import Foundation

struct Support: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let subTitle: String
}

let supportList = [
    Support(image: "headphones", title: "Khalti Help and Support", subTitle: "Facing problems? Get quick support on your queries"),
    Support(image: "lock", title: "Secure Khalti App & Transactions", subTitle: "For 2-Step verification use Khalti mpin or biometric")

]

//
//List(supportList, id: \.id) { support in
//    HStack {
//        Image(support.image)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 50, height: 50)
//        VStack(alignment: .leading) {
//            Text(support.title)
//                .font(.headline)
//
//            Text(support.subTitle)
//                .font(.subheadline)
//                .foregroundColor(.gray)
//        }
//    }
//}

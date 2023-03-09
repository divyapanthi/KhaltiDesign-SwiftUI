//
//  AdImageModel.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 09/03/2023.
//

import Foundation

struct KhaltiAd : Identifiable{
   let id = UUID()
   let image: String
}

let adList = [
    KhaltiAd( image: "ad2"),
    KhaltiAd( image: "ad3"),
    KhaltiAd( image: "ad4"),
    KhaltiAd( image: "ad1")
]


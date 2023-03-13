//
//  AdImageModel.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 09/03/2023.
//

import Foundation

struct AdItem : Identifiable, Hashable{
   let id = UUID()
   let image: String
}

let adList = [
    AdItem( image: "ad2"),
    AdItem( image: "ad3"),
    AdItem( image: "ad4"),
    AdItem( image: "ad1")
]


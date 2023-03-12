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

//
//  FeaturedServiceModel.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 09/03/2023.
//

import Foundation

struct Service: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}

let featuredServices = [
    Service(image: "key", title: "Khalti Quiz"),
    Service(image: "menucard", title: "Bluebook Renewal"),
    Service(image: "house", title: "Link Bank Account"),
    Service(image: "fanblades", title: "Load via ConnectIPS"),
    Service(image: "building", title: "Cooperative Transfer"),
    Service(image: "airport.extreme", title: "Remittance"),

]


let otherServices = [
    Service(image: "graduationcap", title: "Education"),
    Service(image: "lasso.and.sparkles", title: "Health"),
    Service(image: "house", title: "Daily Essentials"),
    Service(image: "crown", title: "Club and Membership"),
    Service(image: "dollarsign.arrow.circlepath", title: "Vendor"),
    Service(image: "suitcase.rolling.fill", title: "Travel & Tourism"),
    Service(image: "person.3", title: "Social Cause"),
]

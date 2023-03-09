
//  RechargeAndPaymentModel.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.


import Foundation

struct Payment: Identifiable {
    let id = UUID()
    let imageIcon: String
    let title: String
    let cashback: String
}

let payments = [
    Payment(imageIcon: "iphone", title: "Topup", cashback: "1-2% Cashback"),
    Payment(imageIcon: "arrow.left.arrow.right.circle", title: "Data/Voice Pack", cashback: ""),
    Payment(imageIcon: "network", title: "Internet", cashback: "1-3% Cashback"),
    Payment(imageIcon: "tv", title: "TV", cashback: "1-2% Cashback"),
    Payment(imageIcon: "film", title: "Movie", cashback: ""),
    Payment(imageIcon: "airplane.departure", title: "Flight", cashback: "5% Cashback"),
    Payment(imageIcon: "lightbulb.fill", title: "Electricity", cashback: ""),
    Payment(imageIcon: "checkmark.square", title: "Voting", cashback: ""),
    Payment(imageIcon: "calendar", title: "Events", cashback: ""),
    Payment(imageIcon: "house.fill", title: "Government Services", cashback: ""),
    Payment(imageIcon: "umbrella.fill", title: "Insurance", cashback: ""),
    Payment(imageIcon: "phone.down", title: "Landline", cashback: ""),
    Payment(imageIcon: "drop.fill", title: "Khanepani", cashback: ""),
    Payment(imageIcon: "bus.fill", title: "Bus Ticket", cashback: ""),
    Payment(imageIcon: "cablecar", title: "Cable Car", cashback: ""),
    Payment(imageIcon: "graduationcap.fill", title: "School/College Fee", cashback: ""),
    Payment(imageIcon: "fanblades.fill", title: "EMI", cashback: ""), //
    Payment(imageIcon: "circle.hexagonpath.fill", title: "Antivirus", cashback: "1-5% Cashback"), //
    Payment(imageIcon: "dollarsign.circle", title: "Financial Services", cashback: ""),
    Payment(imageIcon: "menucard.fill", title: "RC Card", cashback: "1-3% Cashback"),
    Payment(imageIcon: "bicycle", title: "Ride", cashback: ""),
    Payment(imageIcon: "directcurrent", title: "Community Electricity", cashback: ""), //
    Payment(imageIcon: "trash", title: "Waste", cashback: ""),
    
  
]



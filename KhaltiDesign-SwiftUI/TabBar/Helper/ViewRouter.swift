//
//  ViewRouter.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 12/03/2023.
//

import SwiftUI

class ViewRouter: ObservableObject {

    @Published var currentPage: Page = .home  // publised notifies all observing  views to update themselves whenever the page assigned to the current view variable changes
    
}
 
enum Page {
    case home
    case support
    case scanPay
    case transactions
    case menu
}

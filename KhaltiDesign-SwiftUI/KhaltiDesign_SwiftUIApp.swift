//
//  KhaltiDesign_SwiftUIApp.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.
//

import SwiftUI

@main
struct KhaltiDesign_SwiftUIApp: App {
    @StateObject var viewRouter =  ViewRouter()
    var body: some Scene {
        WindowGroup {
            KhaltiTabBar(viewRouter: viewRouter)
        }
    }
}

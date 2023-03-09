//
//  TabBarView.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            HomeView().tabItem{
                Image(systemName: "phone.and.waveform.fill")
                Text("Support")
            }
            HomeView().tabItem{
                Image(systemName: "newspaper.fill")
                Text("Transaction")
            }
            HomeView().tabItem{
                Image(systemName: "questionmark.square.fill")
                Text("Menu")
            }
        }.accentColor(Color("PrimaryColor"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

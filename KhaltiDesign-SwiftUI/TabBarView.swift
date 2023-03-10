//
//  TabBarView.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.
//

import SwiftUI

enum TabBarItem: String, CaseIterable {
    
    case home
    case support
    case qr
    case transaction
    case menu
    
    var icon: String {
            switch self {
            case .home: return "house"
            case .support: return "phone.and.waveform.fill"
            case .qr: return "qrcode"
            case .transaction: return "newspaper.fill"
            case .menu: return "square.grid.3x3.middle.filled"
            }
        }
    
    var title: String {
            switch self {
            case .home: return "Home"
            case .support: return "Support"
            case .qr: return "Scan & Pay"
            case .transaction: return "Transaction"
            case .menu: return "Menu"
            }
        }

}

struct TabBarView: View {
    
    @State private var isHomeSelected: Bool = true
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView().tabItem {
                Image(systemName: "house")
                    .frame(width: 14, height: 14)
                Text("Home")
                    .font(.system(size: 12))
            }.tag(0)
            
            HomeView().tabItem{
                Image(systemName: "phone.and.waveform.fill")
                Text("Support")
                    .font(.system(size: 12))

            }.tag(1)
            
            HomeView().tabItem {
                Image(systemName: "qrcode")
                Text("Scan & Pay")
                    .font(.system(size: 12))
            }.tag(2)
            
            HomeView().tabItem{
                Image(systemName: "newspaper.fill")
                Text("Transaction")
                    .font(.system(size: 12))

            }.tag(3)
            HomeView().tabItem{
                Image(systemName: "square.grid.3x3.middle.filled")
                Text("Menu")
                    .font(.system(size: 12))

            }.tag(4)
        }
        .accentColor(Color("PrimaryColor"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}


struct ButtonView {
    var body: some View {
        VStack {
            Button(action: {
                // Action to perform when the button is tapped
            }) {
                Image(systemName: "qrcode")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 30)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            .background(Color("PrimaryColor"))
            .foregroundColor(.white)
            
            Text("Scan & Pay")
                .font(.system(size: 12))
        }
        
    }

}

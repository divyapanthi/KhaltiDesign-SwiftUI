//
//  TabBarView.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.
//

import SwiftUI



struct CustomTabBar: View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                switch viewRouter.currentPage {
                case .home:
                    HomeView()
                    
                case .support:
                    HomeView()
                    
                case .scanPay:
                    HomeView()
                    
                case .transactions:
                    Text("Transactions")
                    
                case .menu:
                    HomeView()
                    
                    
                }
                Spacer()
                HStack {
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .home, width: geometry.size.width/6, height: geometry.size.width/22, systemIconName: "house.fill", tabName: "Home")
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .support, width: geometry.size.width/5, height: geometry.size.width/22, systemIconName: "phone.and.waveform.fill", tabName: "Support")
                    
                    if viewRouter.currentPage == .home {
                        VStack {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color("PrimaryColor"))
                                    .frame(width: geometry.size.width/7, height: geometry.size.width/7)
                                    .shadow(radius: 2)
                                Image(systemName: "qrcode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width/9-18, height: geometry.size.width/9-18)
                                    .foregroundColor(.white)
                                
                            }
                            Text("Scan & Pay")
                                .fontWeight(.regular)
                                .font(.system(size: 10))
                                .foregroundColor(.black
                                    .opacity(0.5))
                        }.offset(y: -geometry.size.height/9/3)
                    }
                    
                    else {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .transactions, width: geometry.size.width/5, height: geometry.size.width/22, systemIconName: "qrcode", tabName: "Scan & Pay")
                    }
                    
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .transactions, width: geometry.size.width/5, height: geometry.size.width/22, systemIconName: "newspaper.fill", tabName: "Transaction")
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .menu, width: geometry.size.width/5, height: geometry.size.width/22, systemIconName: "square.grid.3x3", tabName: "Menu")
                    
                }
                .frame(width: geometry.size.width, height: geometry.size.height/10)
                .background(Color("SecondaryColor"))
            }
            .edgesIgnoringSafeArea([.bottom, .top])
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(viewRouter: ViewRouter())
    }
}

struct TabBarIcon: View {
    @StateObject var viewRouter: ViewRouter
    @State var isSelectedIndex = 0
    let assignedPage: Page
    let width, height: CGFloat
    let systemIconName, tabName: String
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .fontWeight(.regular)
                .font(.system(size: 10))
            Spacer()
        }
        .padding(.horizontal, -4)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color("PrimaryColor") : .black.opacity(0.5))
        
    }
}

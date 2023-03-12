//
//  TabBarView.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.
//

import SwiftUI

struct KhaltiTabBar: View {
    
    @State private var qrAnimate = false
    @State private var isButtonAnimating = false
    
    @State private var isHomePage = false

    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                switch viewRouter.currentPage {
                case .home:
                    HomeView()
                    
                case .support:
                    Text("Support")
                    
                case .scanPay:
                    Text("Scan and pay")
                    
                case .transactions:
                    Text("Transactions")
                    
                case .menu:
                    Text("Menu")
                    
                    
                }
                Spacer()
                HStack {
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .home, width: geometry.size.width/5, height: geometry.size.width/22, systemIconName: "house.fill", tabName: "Home")
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .support, width: geometry.size.width/5, height: geometry.size.width/22, systemIconName: "phone.and.waveform.fill", tabName: "Support")
                    
                    if viewRouter.currentPage == .home {
                        VStack {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color("PrimaryColor"))
                                    .frame(width: geometry.size.width/8, height: geometry.size.width/8)
                                    .shadow(radius: 2)

                                Image(systemName: "qrcode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: qrAnimate ? geometry.size.width/10-18 : 0 , height: qrAnimate ? geometry.size.width/10-18 : 0)
                                    .foregroundColor(qrAnimate ? .white : .red)
                                    .opacity(qrAnimate ? 1: 0)
                                    .animation(qrAnimate ? .easeInOut(duration: 1.2) : .easeOut(duration: 1.2), value: qrAnimate)
                            }.onAppear {
                                self.qrAnimate = true
                                isButtonAnimating = false
                            }
                            .onDisappear{
                                self.qrAnimate = false
                                isButtonAnimating = true
                            }
                            .scaleEffect(isButtonAnimating ? 1.5: 1.0)
                                .animation(.easeInOut(duration: 1.2), value: isButtonAnimating)
                                .onChange(of: viewRouter.currentPage) { newValue in
                                    if newValue != .home {
                                        qrAnimate = false
                                    }
                                }
                            Text("Scan & Pay")
                                .fontWeight(.regular)
                                .font(.system(size: 10))
                                .foregroundColor(.black
                                    .opacity(0.5))
                                .padding(.top, 4)
                        }
                        .offset(y: -geometry.size.height/9/3)
                    }
                    
                    else {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .scanPay, width: geometry.size.width/5, height: geometry.size.width/22, systemIconName: "qrcode", tabName: "Scan & Pay")
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
        KhaltiTabBar(viewRouter: ViewRouter())
    }
}

struct TabBarIcon: View {

    @StateObject var viewRouter: ViewRouter
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
            withAnimation(.easeInOut(duration: 0.8)) {
                viewRouter.currentPage = assignedPage

            }
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color("PrimaryColor") : .black.opacity(0.5))
        
    }
}

//
//  ContentView.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        let gridItems = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()) ]
        
        let adImageList = ["ad1", "ad2", "ad3", "ad4"]
        
        ScrollView {
            VStack {
                VStack {
                    HStack {
                        HStack(spacing: 1) {
                            Image("girl")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 30)
                                .clipShape(Circle())
                            Text("Divya")
                                .fontWeight(.bold)
                        }.padding()
                        Spacer()
                        HStack(spacing: 20) {
                            Button(action: {
                                // Action to perform when the button is tapped
                            }) {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.white)
                            }
                            Button(action: {
                                // Action to perform when the button is tapped
                            }) {
                                Image(systemName: "gift.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .font(.system(size: 16))
                                    .foregroundColor(.yellow)
                            }
                            Button(action: {
                                // Action to perform when the button is tapped
                            }) {
                                Image(systemName: "bell.badge.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                            }
                        }.padding(.trailing)
                    }
                    HStack(alignment: .center) {
                        VStack(alignment: .leading, spacing: 10) {
                            HStack() {
                                Text("Rs.")
                                Text("XXX.XX")
                            }
                            HStack() {
                                Button(action: {
                                    // Action to perform when the button is tapped
                                }) {
                                    Image(systemName: "eye")
                                        .font(.system(size: 16))
                                }
                                Text("Khalti Balance")
                                    .font(.system(size: 12))
                            }
                        }.frame(
                            width: 140,
                            height: 80)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding(.trailing, 40)
                        .background(.white)
                        .cornerRadius(8)
                        
                        Spacer()
                        
                        VStack {
                            Button(action: {
                                // Action to perform when the button is tapped
                            }) {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 50, height: 40)
                                    .overlay(
                                        Image("addMoney")
                                            .resizable()
                                            .frame(width: 25, height: 25, alignment: .center)
                                            .foregroundColor(Color("PrimaryColor"))
                                    )
                            }
                            Text("Add Money")
                                .font(.system(size: 12))
                        }
                        VStack {
                            Button(action: {
                                // Action to perform when the button is tapped
                            }) {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 50, height: 40)
                                    .overlay(
                                        Image("sendMoney")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: .center)
                                            .foregroundColor(Color("PrimaryColor"))
                                    )
                            }
                            Text("Send Money")
                                .font(.system(size: 12))
                        }
                        
                    }.padding()
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: 200,
                    alignment: .topLeading
                )
                .foregroundColor(.white)
                .padding(.top, 35)
                .background(Color("PrimaryColor"))
                .cornerRadius(8)
                .edgesIgnoringSafeArea(.all)
                
                HStack {
                    Text("  Watch ")
                        .fontWeight(.medium)
                        .font(.system(size: 12))
                    +
                    Text("Chhakka Panja 4 ")
                        .fontWeight(.regular)
                        .font(.system(size: 12))
                    +
                    
                    Text("with Family!")
                        .fontWeight(.medium)
                        .font(.system(size: 12))
                    
                    
                    Spacer()
                    Button(action: {
                        // add action here
                    }) {
                        Text("Buy Tickets")
                            .fontWeight(.bold)
                            .font(.system(size: 14))
                            .foregroundColor(Color("SecondaryColor"))
                            .padding(.vertical, 4)
                            .padding(.horizontal, 4)
                    }
                }.overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color("SecondaryColor"))
                ).padding(.horizontal, 8)
                    .padding(.vertical, 8)
                
                VStack {
                    Text("Recharge and Bill Payments")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)
                    
                    LazyVGrid(columns: gridItems, alignment: .center, spacing: 2) {
                        ForEach(payments) { item in
                            VStack(alignment: .center, spacing: 16) {
                                Button(action: {
                                    // handle button tap
                                }, label: {
                                    Image(systemName: item.imageIcon)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 22, height: 22)
                                        .accentColor(Color("PrimaryColor"))
                                })
                                Text(item.title)
                                    .font(.system(size: 13))
                                    .multilineTextAlignment(.center)
                                
                                if(item.cashback == "") {
                                    Text("")
                                    
                                } else {
                                    Text(item.cashback)
                                        .font(.system(size: 10))
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 4)
                                        .padding(.vertical, 2)
                                        .background(Color("SecondaryColor"))
                                        .cornerRadius(8)
                                }
                            }.frame(width: 90, height: 120, alignment: .center)
                            
                        }
                    }
                    .padding()
                    
                }
                .padding(.vertical, 12)
                .background(.white)
                .cornerRadius(8)
                
                Spacer()
                VStack {
                    Image("ad")
                        .resizable()
                        .frame(height: 130)
                        .cornerRadius(8)
                        .padding(.leading, 14)
                        .padding(.trailing, 14)
                        .padding(.vertical, 20)
                        .aspectRatio(contentMode: .fill)
                }.frame(minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .topLeading)
                .background(.white)
                .cornerRadius(8)
                
                VStack {
                    Text("Featured Services")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(featuredServices) { item in
                                VStack {
                                    Button(action: {
                                        // handle button tap
                                    }, label: {
                                        Image(systemName: item.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 24)
                                            .accentColor(Color("PrimaryColor"))
                                    })
                                    Text(item.title)
                                        .font(.system(size: 13))
                                        .multilineTextAlignment(.center)
                                }.frame(width: 100, height: 80, alignment: .center)
                                
                            }
                        }.padding(.horizontal, 12)
                        
                    }
                }.padding(.vertical, 12)
                    .background(.white)
                    .cornerRadius(8)
                
                VStack {
                    Text("Other Services")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(otherServices) { item in
                                VStack {
                                    Button(action: {
                                        // handle button tap
                                    }, label: {
                                        Image(systemName: item.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 24)
                                            .accentColor(Color("PrimaryColor"))
                                    })
                                    Text(item.title)
                                        .font(.system(size: 13))
                                        .multilineTextAlignment(.center)
                                }.frame(width: 100, height: 80, alignment: .center)
                                
                            }
                        }.padding(.horizontal, 12)
                        
                    }
                }.padding(.vertical, 12)
                    .background(.white)
                    .cornerRadius(8)
                
                VStack {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(adImageList) { item in
                                Image(item)
                                    .resizable()
                                    .frame(height: 130)
                                    .cornerRadius(8)
                                    .padding(.leading, 14)
                                    .padding(.trailing, 14)
                                    .padding(.vertical, 20)
                                    .aspectRatio(contentMode: .fill)
                            }
                            
                        }
                    }
                    
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity,
                       alignment: .topLeading)
                .background(.white)
                .cornerRadius(8)
                
            }
            .background(.gray.opacity(0.15))
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
    
}


struct Post : Identifiable{
   let id = UUID()
   let title: String
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}




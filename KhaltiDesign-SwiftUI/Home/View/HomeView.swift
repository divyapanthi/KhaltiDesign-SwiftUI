//
//  ContentView.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.
//

import SwiftUI

struct HomeView: View {

    let adList = adListData()

    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                TopView()
                VStack {
                    HStack {
                        Group {
                            Text("Watch ")
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
                        }.padding(.leading, 10)
                        Spacer()
                        TextButton(title: "Buy Tickets", textColor: Color("CashbackBackground"), action: {})
                    }.addBorder(color: Color("CashbackBackground"), width: 0.8, cornerRadius: 4)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                    
                    RechargeAndPaymentGridView()
                    
                    Spacer()
                    VStack {
                        Image("ad1")
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
                    .background(.red)
                    .cornerRadius(8)
                    
                    VStack {
                        TitleTextView(title: "Featured Services")
                            .frame(width: UIScreen.main.bounds.width, alignment: .leading)

                        HorizontalScrollView(loopOn: featuredServices)
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                    
                    VStack {
                        TitleTextView(title: "Other Services")
                            .frame(width: UIScreen.main.bounds.width, alignment: .leading)

                        HorizontalScrollView(loopOn: otherServices)
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                        
                    AutoScrollAdImagesView()
                    
                    VStack {
                        TitleTextView(title: "Registration & Enrollments ")
                            .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        ScrollView(.horizontal, showsIndicators: false) {
                            BorderedHStack(loopOn: registrationServices)
                            
                        }
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                    
                    VStack {
                        TitleTextView(title: "Insurance Services")
                            .frame(width: UIScreen.main.bounds.width, alignment: .leading)

                        ScrollView(.horizontal, showsIndicators: false) {
                            BorderedHStack(loopOn: insuranceServices)
                            
                        }
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                    
                    VStack {
                        VStack {
                            TitleTextView(title: "Popular Services")
                                .frame(width: UIScreen.main.bounds.width, alignment: .leading)

                            ScrollView(.horizontal, showsIndicators: false) {
                                BorderedHStack(loopOn: popularServices)
                                
                            }
                        }
                        Spacer(minLength: 40)
                        VStack {
                            HStack {
                                TitleTextView(title: "Popular Government Services")
                                Spacer()
                                CustomTextView(title: "SEE ALL", fontSize: 16)
                                    .padding(.trailing, 10)
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                BorderedHStack(loopOn: popularGovernmentServices)
                            }
                        }
                        
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                }
                VStack {
                    TitleTextView(title: "Recently Added Services")
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    ScrollView(.horizontal, showsIndicators: false) {
                        BorderedHStack(loopOn: recentlyAddedServices)
                    }
                    
                    AutoScrollAdImagesView()
                    
                }.padding(.vertical, 12)
                    .background(.white)
                    .cornerRadius(8)
                
                VStack {
                    TitleTextView(title: "Send Money to Vendor")
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        BorderedHStack(loopOn: sendMoneyToVendor)
                        
                    }
                    
                    VStack {
                        Image("ad3")
                            .resizable()
                            .scaledToFill()
                            .withFrame(FrameOptions(width: .infinity, height: 80))
                            .cornerRadius(8)
                        
                        Spacer(minLength: 30)
                        TitleTextView(title: "We are accepted Online At")
                            .frame(width: UIScreen.main.bounds.width, alignment: .leading)

                        HorizontalScrollView(loopOn: acceptedOnline)
                        
                    }
                    
                } .padding(.vertical, 12)
                    .background(.white)
                    .cornerRadius(8)
                
                VStack {
                    Image("ad4")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 100)
                        .cornerRadius(8)
                        .padding(30)
                        .aspectRatio(contentMode: .fill)
                }.frame(minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .topLeading)
                .padding(.vertical, 12)
                .background(.white)
                .cornerRadius(8)
                
                VStack {
                    ForEach(Array(supportList.enumerated()), id: \.1.id) { index, support in
                        HStack(alignment: .center, spacing: 20) {
                            Image(systemName: support.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .withFrame(FrameOptions(width: 22, height: 22, alignment: .leading))
                                .foregroundColor(Color.black.opacity(0.7))
                            
                            VStack(alignment: .leading, spacing: 10) {
    
                                Text(support.title)
                                    .font(.system(size: 14))
                                Text(support.subTitle)
                                    .font(.system(size: 12))
                                    .foregroundColor(.gray)
                                Divider()
//                                if index != supportList.count - 1 {
//                                    Divider()
//
//                                }
                            }
                            
                            
                        }.padding(12)
                    }
                }.frame(minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .topLeading)
                .padding(.vertical, 12)
                .background(.white)
                .cornerRadius(8)
                
            }
            
        }.background(Color("SecondaryColor"))
        
            .onAppear{
                UIScrollView.appearance().bounces = false
            }
            .edgesIgnoringSafeArea(.top)
    }
}


 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12 Pro Max")
    }
}



struct RechargeAndPaymentGridView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()) ]
    
    @State private var isExpanded = false
    
    var body: some View {

            VStack {
                                    
                TitleTextView(title: "Recharge and Bill Payments")
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)


                LazyVGrid(columns: columns, alignment: .center) {
                    ForEach(payments.prefix(isExpanded ? payments.count : 12)) { item in
                        VStack(alignment: .center, spacing: 4) {
                            ImageButtonView(systemImage: item.imageIcon, imageWidth: 22, imageHeight: 22, imageAccentColor: Color("PrimaryColor"), action: {})
                            CustomTextView(title: item.title, textWidth: 100, textHeight: 36)
                            
                            if(item.cashback.isEmpty) {
                                Text("")
                                
                            } else {
                                Text(item.cashback)
                                    .font(.system(size: 9))
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 4)
                                    .padding(.vertical, 2)
                                    .background(Color("CashbackBackground"))
                                    .cornerRadius(8)
                            }
                        }.frame(width: 90, height: 120, alignment: .center)
                        
                    }
                }.padding(.horizontal, 20)
                
                if payments.count > 12 {
                    Button(action: {
                        withAnimation(.spring(response: 1.5, dampingFraction: 0.7)) {
                            isExpanded.toggle()

                        }
                    }) {
                        HStack{
                            Text(isExpanded ? "VIEW LESS" : "VIEW MORE")
                                .font(.system(size: 10))
                                .fontWeight(.medium)
                            Image(systemName: isExpanded ? "chevron.up" : "chevron.down").font(.system(size: 12))
                        
                        }}
                    .padding(10)
                    .foregroundColor(Color("PrimaryColor"))
                    .background(Color("SecondaryColor"))
                    .cornerRadius(20)
                    Spacer()
                }
                
            }
            
            .padding(.vertical, 14)
            .background(.white)
        .cornerRadius(8)
        }
}


struct HorizontalScrollView: View {
    
    var loopOn: [Service] = []
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(loopOn) { item in
                    VStack {
                        ImageButtonView(systemImage: item.image, imageWidth: 25, imageHeight: 20, imageAccentColor: Color("PrimaryColor"), action: {})
                        CustomTextView(title: item.title, textWidth: 80, textHeight: 36)
                    }.frame(width: 84, height: 80, alignment: .center)
                }
            }.padding(.horizontal, 12)
            
        }
    }
}

struct BorderedHStack: View {
    var loopOn: [Service] = []
    var body: some View {
        HStack( alignment: .center) {
            ForEach(loopOn) { item in
                VStack(spacing: 1) {
                    Button(action: {
                        // Action to perform when the button is tapped
                    }) {
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        
                    }
                    .frame(width: 105, height: 100, alignment: .center)
                    .addBorder(color: Color("PrimaryColor"), width: 0.4, cornerRadius: 4)
                    
                    Text(item.title)
                        .font(.system(size: 12))
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                        .frame(width: 100, height: 40)
                        .padding(.horizontal, 4)
                }.frame(width: 110, alignment: .center)
            }
        }.padding(.horizontal)
    }
}

struct BalanceView: View {
    @State private var isRupeesHidden = true
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack() {
                CustomTextView(title: "रु", fontSize: 20)
                let khaltiRupees = isRupeesHidden ? Text("XXX.XX") : Text("2000.00")
                khaltiRupees.fontWeight(.bold)
            }
            HStack() {
                ImageButtonView(systemImage: isRupeesHidden ? "eye.fill" : "eye.slash.fill", imageWidth: 20, imageHeight: 20, imageAccentColor: Color("PrimaryColor"), action: {
                    isRupeesHidden.toggle()
                })
                Text("Khalti Balance")
                    .font(.system(size: 11))
            }
        }
    }
}

struct ReloadBalanceButton: View {
    @State private var angle = 0.0
    var body: some View {
        ZStack {
            Group {
                Circle()
                    .foregroundColor(Color("SecondaryColor"))
                    .frame(width: 20, height: 24)
                    .addShadow()
                ImageButtonView(systemImage: "arrow.triangle.2.circlepath", imageWidth: 14, imageHeight: 14, imageAccentColor: Color("PrimaryColor"), action: {
                    angle += 450
                })
                .font(Font.title.weight(.bold))
            }    .rotationEffect(.degrees(angle))
                .animation(.easeIn(duration: 1.5), value: angle)
            
            
        }.offset(x: 80)
        
    }
}

struct TopView: View {
    var body: some View {
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
                }.padding(.horizontal)
                Spacer()
                HStack(spacing: 20) {
                    ImageButtonView(systemImage: "magnifyingglass", imageWidth: 16, imageHeight: 16, imageAccentColor: .white, action: {})
                    ImageButtonView(systemImage: "gift.fill", imageWidth: 20, imageHeight: 20, imageAccentColor: .pink, action: {})
                    ImageButtonView(systemImage: "bell.badge.fill", imageWidth: 18, imageHeight: 18, imageAccentColor: .white, action: {})
                }.padding(.trailing)
            }
            
            HStack(alignment: .center) {
                ZStack {
                    BalanceView()
                        .frame(
                            width: 140,
                            height: 80)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding(.trailing, 30)
                        .padding(.leading, -10)
                        
                        .background(.white)
                        .cornerRadius(8)
                    ReloadBalanceButton()
                }
                
                Spacer(minLength: 20)
                
                VStack {
                    CircleButtonImageView(useSystemImage: false, imageName: "addMoney", action: {})
                    CustomTextView(title: "Add Money")
                }
                VStack {
                    CircleButtonImageView(useSystemImage: false, imageName: "sendMoney", action: {})
                    CustomTextView(title: "Send Money")
                }
                
            }.padding()
            
        }.withFrame(FrameOptions(
            alignment: .topLeading,
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: 200
        ))
        
        .foregroundColor(.white)
        .padding(.top, 50)
        .padding(.bottom, 20)
        .background(Color("PrimaryColor"))
        .cornerRadius(8)
    }
}

struct TitleTextView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 14))
            .fontWeight(.medium)
            .padding(.horizontal, 12)
        
    }
}
func adListData() -> [AdItem] {
    return adList
}

struct AutoScrollAdImagesView: View {
    @State private var currentIndex = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    var body: some View {
        GeometryReader { proxy in
            TabView (selection: $currentIndex){
                ForEach(adList.indices) { index in
                    Image(adList[index].image)
                        .resizable()
                        .scaledToFill()
                        .withFrame(FrameOptions(width: 380, height: 110, alignment: .leading))
                        .cornerRadius(8)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(.vertical, 20)
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding()
                .frame(width: proxy.size.width, height: proxy.size.height)
                .onReceive(timer) { _ in
                    withAnimation {
                        currentIndex = currentIndex < adList.count ? currentIndex + 1 : 0
                        
                    }
                }
        }
        .frame(minWidth: 200, maxWidth: .infinity,  minHeight: 140, maxHeight: .infinity)
        
        .background(.white)
        .cornerRadius(8)
    }
}

//
//  ContentView.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
    
        ScrollView(showsIndicators: false) {
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
                            ButtonImageView(systemImage: "magnifyingglass", imageWidth: 20, imageHeight: 20, imageAccentColor: .white)
                            ButtonImageView(systemImage: "gift.fill", imageWidth: 20, imageHeight: 20, imageAccentColor: .pink)
                            ButtonImageView(systemImage: "bell.badge.fill", imageWidth: 20, imageHeight: 20, imageAccentColor: .white)
                        }.padding(.trailing)
                    }
                    HStack(alignment: .center) {
                        VStack(alignment: .leading, spacing: 10) {
                            HStack() {
                                Text("Rs.")
                                Text("XXX.XX")
                                    .fontWeight(.bold)
                            }
                            HStack() {
                                ButtonImageView(systemImage: "eye", imageWidth: 20, imageHeight: 20)
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
                            CircleButtonImageView(image: "addMoney")
                            CustomTextView(title: "Add Money")
                        }
                        VStack {
                            CircleButtonImageView(image: "sendMoney")
                            CustomTextView(title: "Send Money")
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
                
                
                VStack {
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
                    .cornerRadius(8)
                    
                    VStack {
                        TitleTextView(title: "Featured Services")
                        
                        HorizontalScrollView(test: featuredServices)
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                    
                    VStack {
                        Text("Other Services")
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 12)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(otherServices) { item in
                                    VStack {
                                        Button(action: {
                                            // handle button tap
                                        }, label: {
                                            Image(systemName: item.image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 22, height: 24)
                                                .accentColor(Color("PrimaryColor"))
                                        })
                                        Text(item.title)
                                            .font(.system(size: 12))
                                            .multilineTextAlignment(.center)
                                            .lineLimit(2)
                                            .frame(width: 80, height: 36)
                                        
                                    }.frame(width: 84, height: 80, alignment: .center)
                                    
                                }
                            }.padding(.horizontal, 12)
                            
                        }
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                    
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(adList) { item in
                                    Image(item.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 350, height: 110)
                                        .cornerRadius(8)
                                        .padding(.leading, 20)
                                        .padding(.trailing, 20)
                                    
                                        .padding(.vertical, 20)
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
                    
                    VStack {
                        Text("Registration & Enrollments")
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 12)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack( alignment: .center) {
                                ForEach(registrationServices) { item in
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
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 4)
                                                .strokeBorder(Color("PrimaryColor"), lineWidth: 0.4)
                                            
                                        )
                                        
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
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                    
                    VStack {
                        Text("Insurance Services")
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 12)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack( alignment: .center) {
                                ForEach(insuranceServices) { item in
                                    VStack(spacing: 1) {
                                        Button(action: {
                                            // Action to perform when the button is tapped
                                        }) {
                                            AsyncImage(url: URL(string: "https://dao578ztqooau.cloudfront.net/static/category_icons/v5/tv.svg"))
                                                .frame(width: 60, height: 60)
                                            
                                        }
                                        .frame(width: 105, height: 100, alignment: .center)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 4)
                                                .strokeBorder(Color("PrimaryColor"), lineWidth: 0.4)
                                            
                                        )
                                        
                                        Text(item.title)
                                            .font(.system(size: 12))
                                            .lineLimit(2)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 120, height: 40)
                                            .padding(.horizontal, 4)
                                    }.frame(width: 110, alignment: .center)
                                }
                            }.padding(.horizontal)
                            
                        }
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                    
                    VStack {
                        VStack {
                            Text("Popular Services")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal, 12)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack( alignment: .center) {
                                    ForEach(popularServices) { item in
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
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 4)
                                                    .strokeBorder(Color("PrimaryColor"), lineWidth: 0.4)
                                            )
                                            
                                            Text(item.title)
                                                .font(.system(size: 12))
                                                .lineLimit(2)
                                                .multilineTextAlignment(.center)
                                                .frame(width: 110, height: 40)
                                                .padding(.horizontal, 4)
                                        }.frame(width: 110, alignment: .center)
                                    }
                                }.padding(.horizontal)
                                
                            }
                        }
                        Spacer(minLength: 40)
                        VStack {
                            HStack {
                                Text("Popular Government Services")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("SEE ALL")
                                    .font(.system(size: 16))
                                    .fontWeight(.medium)
                            }
                            .padding(.horizontal)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack( alignment: .center) {
                                    ForEach(popularGovernmentServices) { item in
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
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 4)
                                                    .strokeBorder(Color("PrimaryColor"), lineWidth: 0.4)
                                                
                                            )
                                            
                                            Text(item.title)
                                                .font(.system(size: 12))
                                                .lineLimit(2)
                                                .multilineTextAlignment(.center)
                                                .frame(width: 90, height: 40)
                                                .padding(.horizontal, 4)
                                            
                                        }.frame(width: 110, alignment: .center)
                                    }
                                }.padding(.horizontal)
                                
                            }
                        }
                        
                    }.padding(.vertical, 12)
                        .background(.white)
                        .cornerRadius(8)
                }
                
                VStack {
                    Text("Recently Added Services")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack( alignment: .center) {
                            ForEach(recentlyAddedServices) { item in
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
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 4)
                                            .strokeBorder(Color("PrimaryColor"), lineWidth: 0.4)
                                        
                                    )
                                    
                                    Text(item.title)
                                        .font(.system(size: 12))
                                        .lineLimit(2)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 110, height: 40)
                                        .padding(.horizontal, 4)
                                }.frame(width: 110, alignment: .center)
                            }
                        }.padding(.horizontal)
                        
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(adList) { item in
                                Image(item.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 350, height: 110)
                                    .cornerRadius(8)
                                    .padding(.leading, 20)
                                    .padding(.trailing, 20)
                                    .padding(.vertical, 20)
                            }
                        }
                    }
                    
                }.padding(.vertical, 12)
                    .background(.white)
                    .cornerRadius(8)
                
                VStack {
                    Text("Send Money to Vendor")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack( alignment: .center) {
                            ForEach(sendMoneyToVendor) { item in
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
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 4)
                                            .strokeBorder(Color("PrimaryColor"), lineWidth: 0.4)
                                        
                                    )
                                    CustomTextView(title: item.title, textWidth: 110, textHeight: 40)
                                }.frame(width: 110, alignment: .center)
                            }
                        }.padding(.horizontal)
                        
                    }
                    
                    VStack {
                        Image("ad3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: .infinity, height: 80)
                            .cornerRadius(8)
                        
                        Spacer(minLength: 30)
                        Text("We're accepted Online At")
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 12)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack( alignment: .center) {
                                ForEach(acceptedOnline) { item in
                                    VStack() {
                                        Button(action: {
                                            // handle button tap
                                        }, label: {
                                            Image(systemName: item.image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 22, height: 24)
                                                .accentColor(Color("PrimaryColor"))
                                        })
                                        Text(item.title)
                                            .font(.system(size: 12))
                                            .multilineTextAlignment(.center)
                                            .lineLimit(2)
                                            .frame(width: 70, height: 36)
                                        
                                    }.frame(width: 84, height: 80, alignment: .center)
                                }
                            }.padding(.horizontal)
                            
                        }
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
                        .padding(.leading, 30)
                        .padding(.trailing, 30)
                        .padding(.vertical, 30)
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
                    ForEach(supportList) { support in
                        HStack(alignment: .center, spacing: 20) {
                            Image(systemName: support.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 22, height: 22, alignment: .center)
                                .foregroundColor(Color.black.opacity(0.7))
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text(support.title)
                                    .font(.system(size: 14))
                                Text(support.subTitle)
                                    .font(.system(size: 12))
                                    .foregroundColor(.gray)
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
            
        }.background(.gray.opacity(0.15))
        
            .onAppear{
                UIScrollView.appearance().bounces = false
            }
            .edgesIgnoringSafeArea(.top)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}




struct RechargeAndPaymentGridView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()) ]
    
    var body: some View {
        VStack {
            TitleTextView(title: "Recharge and Bill Payments")
            LazyVGrid(columns: columns, alignment: .center) {
                ForEach(payments) { item in
                    VStack(alignment: .center, spacing: 4) {
                        ButtonImageView(systemImage: item.imageIcon, imageWidth: 22, imageHeight: 22, imageAccentColor: Color("PrimaryColor"))
                        CustomTextView(title: item.title, textWidth: 100, textHeight: 36)
                        
                        if(item.cashback.isEmpty) {
                            Text("")
                            
                        } else {
                            Text(item.cashback)
                                .font(.system(size: 9))
                                .foregroundColor(.white)
                                .padding(.horizontal, 4)
                                .padding(.vertical, 2)
                                .background(Color("SecondaryColor"))
                                .cornerRadius(8)
                        }
                    }.frame(width: 90, height: 120, alignment: .center)
                    
                }
            }
            .padding(.horizontal, 20)
            
        }
        
        .padding(.vertical, 12)
        .background(.white)
        .cornerRadius(8)
    }
}

struct CustomTextView: View {
    
    var title: String
    var textWidth: CGFloat?
    var textHeight: CGFloat?
    var fontSize: CGFloat?
    
    var body: some View {
        Text(title)
            .font(.system(size: fontSize ?? 12))
            .multilineTextAlignment(.center)
            .frame(width: textWidth, height: textHeight)
            .padding(.horizontal, 4)
    }
}

struct ButtonImageView: View {
    
    var systemImage: String
    var imageWidth: CGFloat?
    var imageHeight: CGFloat?
    var imageAccentColor: Color?

    var body: some View {
        
        Button(action: {
            // Action to perform when the button is tapped
        }) {
            Image(systemName: systemImage)
                .resizable()
                .scaledToFit()
                .frame(width: imageWidth, height: imageHeight)
                .foregroundColor(imageAccentColor)
        }

    }
}

struct CircleButtonImageView: View {
    
    var image: String
    var circleWidth: CGFloat?
    var circleHeight: CGFloat?
    var imageHeight: CGFloat?
    var imageWidth: CGFloat?
    
    var body: some View {
        Button(action: {
            // Action to perform when the button is tapped
        }) {
            Circle()
                .fill(Color.white)
                .frame(width: circleWidth ?? 50, height: circleHeight ?? 40)
                .overlay(
                    Image("addMoney")
                        .resizable()
                        .frame(width: imageWidth ?? 25, height: imageHeight ?? 25, alignment: .center)
                        .foregroundColor(Color("PrimaryColor"))
                )
        }
    }
}

struct TitleTextView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 14))
            .fontWeight(.medium)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 12)
    }
}

struct HorizontalScrollView: View {
    
    var test: [Service] = []
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(featuredServices) { item in
                    VStack {
                        ButtonImageView(systemImage: item.image, imageWidth: 30, imageHeight: 24, imageAccentColor: Color("PrimaryColor"))
                        CustomTextView(title: item.title, textWidth: 80, textHeight: 36)
                    }.frame(width: 84, height: 80, alignment: .center)
                }
            }.padding(.horizontal, 12)
            
        }
    }
}

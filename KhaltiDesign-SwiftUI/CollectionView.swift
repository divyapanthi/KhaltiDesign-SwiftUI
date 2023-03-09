//
//  CollectionView.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 08/03/2023.
//

//import SwiftUI
//
//struct CollectionView: View {
//    
//    let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
//
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: gridItems, spacing: 16) {
//                ForEach(items) { item in
//                    VStack {
//                        Button(action: {
//                            // handle button tap
//                        }, label: {
//                            Image(item.imageIcon)
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 80, height: 80)
//                                .cornerRadius(10)
//                        })
//                        Text(item.title)
//                            .font(.headline)
//                        Text(item.cashback ?? "")
//                            .font(.subheadline)
//                    }
//                }
//            }
//            .padding()
//        }
//    }
//
//}
//
//
//struct CollectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        CollectionView()
//    }
//}



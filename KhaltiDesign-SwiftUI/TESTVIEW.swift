//
//  TESTVIEW.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Sushil Dhital on 12/03/2023.
//

import SwiftUI

struct TESTVIEW: View {
    var body: some View {
        ZStack {
            VStack {
                Text("This is the top view in the VStack")
                Text("This is the bottom view in the VStack")
            }.background(.red)
            ZStack {
                HStack {
                    Spacer()
                    Button(action: {
                        // Action for button
                    }) {
                        Text("button")
                    }
                }
            }
            
        }
    }
}


struct TESTVIEW_Previews: PreviewProvider {
    static var previews: some View {
        TESTVIEW()
    }
}

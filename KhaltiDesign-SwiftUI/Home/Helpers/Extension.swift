//
//  Extension.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 11/03/2023.
//

import Foundation
import SwiftUI

extension View {
    
    func addBorder(color: Color, width: CGFloat, cornerRadius: CGFloat) -> some View {
        self.overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(color, lineWidth: width)
        )
    }
    
    
}


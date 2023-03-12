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
    
    func addShadow(color: Color = Color.black.opacity(0.2), radius: CGFloat = 10, x: CGFloat = 0, y: CGFloat = 10) -> some View {
        self.shadow(color: color, radius: radius, x: x, y: y)
    }
    
    
    
}


struct FrameOptions {
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    var alignment: Alignment = .center
    var minWidth: CGFloat? = nil
    var maxWidth: CGFloat? = nil
    var minHeight: CGFloat? = nil
    var maxHeight: CGFloat? = nil
}

extension View {
    func withFrame(_ options: FrameOptions) -> some View {
        self.frame(width: options.width, height: options.height, alignment: options.alignment)
            .frame(minWidth: options.minWidth, maxWidth: options.maxWidth, minHeight: options.minHeight, maxHeight: options.maxHeight)
    }
}




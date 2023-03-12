//
//  ViewBuilders.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 12/03/2023.
//

import SwiftUI

@ViewBuilder

func TextButton(title: String, textColor: Color, action: @escaping () -> Void) -> some View {
    Button(action: action) {
        Text(title)
            .fontWeight(.bold)
            .font(.system(size: 14))
            .foregroundColor(textColor)
            .padding(.vertical, 4)
            .padding(.horizontal, 4)
    }
    
}


func TitleTextView(title: String) -> some View {
    Text(title)
        .font(.system(size: 14))
        .fontWeight(.medium)
        .withFrame(FrameOptions(alignment: .leading, maxWidth: .infinity))
        .padding(.horizontal, 12)
}


func CustomTextView(title: String, textWidth: CGFloat? = nil, textHeight: CGFloat? = nil, fontSize: CGFloat? = 12) -> some View {
    Text(title)
        .font(.system(size: fontSize ?? 12 ))
        .multilineTextAlignment(.center)
        .withFrame(FrameOptions(width: textWidth, height: textHeight))
        .padding(.horizontal, 4)
}

func CircleButtonImageView(useSystemImage: Bool = true,
                           imageName: String? = nil,
                           systemImage: String? = nil,
                           imageColor: Color? = nil,
                           circleColor: Color? = nil,
                           circleWidth: CGFloat? = 50,
                           circleHeight: CGFloat? = 40,
                           imageHeight: CGFloat? = 25,
                           imageWidth: CGFloat? = 25,
                           action: @escaping () -> Void) -> some View {
    
    Button(action: action) {
        Circle()
            .fill(circleColor ?? .white)
            .frame(width: circleWidth!, height: circleHeight!)
            .overlay(
                Group {
                    if useSystemImage {
                        Image(systemName: systemImage ?? "").resizable()
                    } else if let imageName = imageName {
                        Image(imageName).resizable()
                    }
                }
                    .withFrame(FrameOptions(width: imageWidth!, height: imageHeight!, alignment: .center))
                     .foregroundColor(imageColor ?? Color("PrimaryColor"))
            )
    }
}

func ImageButtonView(systemImage: String,
                     imageName: String? = nil,
                     imageWidth: CGFloat? = 25,
                     imageHeight: CGFloat? = 25,
                     imageAccentColor: Color? = .primary,
                     action: @escaping () -> Void) -> some View {
    
    Button(action: action) {
        let image = imageName != nil ? Image(imageName!) : Image(systemName: systemImage)
        image.resizable()
            .scaledToFit()
            .frame(width: imageWidth!, height: imageHeight!)
            .foregroundColor(imageAccentColor)
    }
}

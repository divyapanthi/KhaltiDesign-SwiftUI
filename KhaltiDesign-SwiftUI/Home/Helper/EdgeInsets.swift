//
//  EdgeInsets.swift
//  KhaltiDesign-SwiftUI
//
//  Created by Divya Panthi on 13/03/2023.
//

import SwiftUI

extension EdgeInsets {
    static func top(_ value: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: value, leading: 0, bottom: 0, trailing: 0)
    }
    
    static func bottom(_ value: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: 0, bottom: value, trailing: 0)
    }
    
    static func leading(_ value: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: value, bottom: 0, trailing: 0)
    }
    
    static func trailing(_ value: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: value)
    }
    
    static func horizontal(_ value: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: value, bottom: 0, trailing: value)
    }
    
    static func vertical(_ value: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: value, leading: 0, bottom: value, trailing: 0)
    }
    
    static func all(_ value: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: value, leading: value, bottom: value, trailing: value)
    }
}




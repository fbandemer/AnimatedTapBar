//
//  TapBarStyle.swift
//  AnimatedTapBar
//
//  Created by Fynn Bandemer on 14.06.20.
//

import SwiftUI

@available(iOS 13.0, *)
public struct TapBarStyle {
    var animationType : Animation
    var backgroundColor : Color
    var cornerRadius : CGFloat
    var shadowColor : Color
    var shadowRadius: CGFloat
    var unselectedColor : Color
    
    public init(animationType: Animation, backgroundColor: Color, cornerRadius: CGFloat, shadowColor: Color, shadowRadius: CGFloat, unselectedColor: Color) {
        self.animationType = animationType
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.shadowColor = shadowColor
        self.shadowRadius = shadowRadius
        self.unselectedColor = unselectedColor
    }
}


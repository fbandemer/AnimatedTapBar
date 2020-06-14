//
//  TapBarItem.swift
//  AnimatedTapBar
//
//  Created by Fynn Bandemer on 14.06.20.
//

import SwiftUI

@available(iOS 13.0, *)
public struct TapBarItem: Identifiable {
    public var id = UUID()
    var icon : Image
    var title : String
    var color : Color
    var view : AnyView
    
    public init(icon: Image, title: String, color: Color, view: AnyView) {
        self.icon = icon
        self.title = title
        self.color = color
        self.view = view
    }
}

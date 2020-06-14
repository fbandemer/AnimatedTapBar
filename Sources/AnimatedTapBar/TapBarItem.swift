//
//  TapBarItem.swift
//  AnimatedTapBar
//
//  Created by Fynn Bandemer on 14.06.20.
//

import SwiftUI

struct TapBarItem: Identifiable {
    var id = UUID()
    var icon : Image
    var title : String
    var color : Color
    var view : AnyView
}

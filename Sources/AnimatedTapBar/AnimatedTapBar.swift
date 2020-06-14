//
//  AnimatedTapBar_2.swift
//  AnimatedTapBar
//
//  Created by Fynn Bandemer on 14.06.20.
//
import SwiftUI

@available(iOS 13.0, *)
public struct AnimatedTapBar: View {
    @State private var activeIndex: Int = 0
    var tapBarItems : [TapBarItem]
    var style : TapBarStyle = TapBarStyle(animationType: Animation.default, backgroundColor: .white, cornerRadius: 30, shadowColor: .black, shadowRadius: 10, unselectedColor: .primary)
    
    
    public init(items: [TapBarItem]) {
        self.tapBarItems = items
    }
    
    public init(items: [TapBarItem], style: TapBarStyle) {
        self.tapBarItems = items
        self.style = style
    }

    public var body: some View {
        ZStack(alignment: .top) {
            tapBarItems[activeIndex].view
            VStack {
                Spacer()
                TapBarView(activeIndex: $activeIndex, items: tapBarItems, style: style)
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

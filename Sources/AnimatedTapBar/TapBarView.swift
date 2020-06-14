//
//  TapBarView.swift
//  AnimatedTapBar
//
//  Created by Fynn Bandemer on 14.06.20.
//

import SwiftUI


struct TapBarView : View {
    @Binding var activeIndex: Int
    var items: [TapBarItem]
    
    var style = TapBarStyle(animationType: Animation.default, backgroundColor: .white, cornerRadius: 30, shadowColor: .black, shadowRadius: 10, unselectedColor: .primary)
    
    public var body: some View {
        HStack(alignment: .bottom) {
            ForEach(0..<items.count) { index in
                TapBarItemView(activeIndex: self.$activeIndex, index: index, item: self.items[index], unselectedColor: self.style.unselectedColor)
                if index != self.items.count-1 {
                    Spacer()
                }
            }
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width)
        .background(style.backgroundColor)
        .cornerRadius(style.cornerRadius)
        .shadow(color: style.shadowColor.opacity(0.25), radius: style.shadowRadius, x: 0, y: -3)
        .animation(style.animationType)
        .edgesIgnoringSafeArea(.bottom)
    }
}

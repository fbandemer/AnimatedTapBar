//
//  AnimatedTapBar_2.swift
//  AnimatedTapBar
//
//  Created by Fynn Bandemer on 14.06.20.
//
import SwiftUI

@available(iOS 13.0, *)
struct AnimatedTapBar: View {
    @State private var activeIndex: Int = 0
    var tapBarItems : [TapBarItem]

    var body: some View {
        ZStack(alignment: .top) {
            tapBarItems[activeIndex].view
            VStack {
                Spacer()
                TapBarView(activeIndex: $activeIndex, items: tapBarItems)
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

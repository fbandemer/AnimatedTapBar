//
//  File.swift
//  AnimatedTapBar
//
//  Created by Fynn Bandemer on 14.06.20.
//

import SwiftUI

public struct TapBarItemView: View {
    
    @Binding var activeIndex : Int
    var index : Int
    var item: TapBarItem
    var unselectedColor : Color
        
    public var body: some View {
        HStack {
            item.icon
                .imageScale(.large)
                .foregroundColor(activeIndex == index ? item.color : .primary)
            
            if activeIndex == index {
                Text(item.title)
                    .foregroundColor(item.color)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
        }
        .padding()
        .background(
            Capsule()
                .fill(activeIndex == index ? item.color.opacity(0.2) : Color.clear)
        ).onTapGesture {
            self.activeIndex = self.index
        }
    }
}

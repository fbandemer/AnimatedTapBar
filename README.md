# Animated Tap Bar for SwiftUI

[![Swift Version](https://img.shields.io/badge/Swift-5.1-orange.svg)](https://swift.org/blog/5-1-release-process/)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-✔-brightgreen.svg)](https://github.com/apple/swift-package-manager)

SwiftUI Tap Bar with naviagtion controller.
Created after some examples on dribble and [these Git](https://github.com/ComradeSwiftUI/SwiftUI-Custom-Tab-Bar)

![Example](https://selfmade-projekt.de/wp-content/uploads/2020/06/ezgif.com-video-to-gif.gif)

This library requires Swift 5.1 and Xcode 11.

## Requirements

- iOS 13.0+ / macOS 10.15+ / tvOS 13.0+ / watchOS 6.0+
- Xcode 11+
- Swift 5.1+

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is now integrated in Xcode 11.

Once you have your Swift package set up, adding DropDownModifier as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/fbandemer/AnimatedTapBar.git")
]
```

## Features

- [x] Full customizable
- [x] Navigation included

## Usage Example

```swift
import SwiftUI

struct ExampleView: View {
    
    let items : [TapBarItem] = [
    TapBarItem(icon: Image(systemName: "person.fill"), title: "Person", color: .green, view: AnyView(View1())),
    TapBarItem(icon: Image(systemName: "house.fill"), title: "House", color: .blue, view: AnyView(View2())),
    TapBarItem(icon: Image(systemName: "desktopcomputer"), title: "Desktop", color: .red, view: AnyView(View3())),
    TapBarItem(icon: Image(systemName: "headphones"), title: "Desktop", color: .purple, view: AnyView(View4()))
    ]
    
    var style = TapBarStyle(
        animationType: .default,
        backgroundColor: .white,
        cornerRadius: 30,
        shadowColor: .black,
        shadowRadius: 10,
        unselectedColor: .black)
    
    var body: some View {
        AnimatedTapBar(items: items, style: style)
    }
}
```



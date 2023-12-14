// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "URLNavigator",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "URLNavigator",
            targets: ["URLNavigator"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/devxoul/Stubber", exact: "1.5.3"),
        .package(url: "https://github.com/Quick/Quick", exact: "7.3.0"),
        .package(url: "https://github.com/Quick/Nimble", exact: "13.0.0")
    ],
    targets: [
        .target(
            name: "URLMatcher",
            path: "Sources/URLMatcher"
        ),
        .target(
            name: "URLNavigator",
            dependencies: ["URLMatcher"],
            path: "Sources/URLNavigator"
        ),
        .testTarget(
            name: "URLNavigatorTests",
            dependencies: [
                "URLNavigator",
                "Stubber",
                "Quick",
                "Nimble"
            ]
        ),
    ]
)

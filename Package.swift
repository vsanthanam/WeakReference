// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WeakReference",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_14),
        .macCatalyst(.v13),
        .tvOS(.v12),
        .watchOS(.v5),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "WeakReference",
            targets: ["WeakReference"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftlang/swift-docc-plugin.git",
            from: "1.4.3"
        )
    ],
    targets: [
        .target(
            name: "WeakReference",
            dependencies: []
        ),
        .testTarget(
            name: "WeakReferenceTests",
            dependencies: ["WeakReference"]
        ),
    ]
)

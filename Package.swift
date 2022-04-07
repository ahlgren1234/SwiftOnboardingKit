// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftOnboardingKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftOnboardingKit",
            targets: ["SwiftOnboardingKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "SwiftOnboardingKit",
            dependencies: ["SnapKit"]),
        .testTarget(
            name: "SwiftOnboardingKitTests",
            dependencies: ["SwiftOnboardingKit"]),
    ]
)

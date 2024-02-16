// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZoomTEST",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "ZoomTEST",
            targets: ["ZoomSDKBinaryTarget"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "ZoomSDKBinaryTarget",
            url: "https://github.com/tiphainegiron/binary-package-test/releases/download/1.0.0/MobileRTC.xcframework.zip",
            checksum: "935aa00c585581cbf6f309545a2ef14d170e8f7e"
        )
    ]
)


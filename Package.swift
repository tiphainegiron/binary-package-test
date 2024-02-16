// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZoomTEST",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ZoomSDK",
            targets: ["ZoomSDK"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "ZoomSDK",
            url: "https://github.com/tiphainegiron/binary-package-test/releases/download/1.0.0/MobileRTC.xcframework.zip",
            checksum: "c3aa8d5b2896ad0a3460010eadc029f483a81660e69bdd2d0ad04924f43c088a"
        )
    ]
)


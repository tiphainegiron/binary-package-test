// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZoomTest",
    platforms: [.iOS(.v14)],
    products: [
        .library(
          name: "ZoomTest",
          targets: ["ZoomTestTarget"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
          name: "ZoomTestTarget",
          dependencies: [
            "ZoomTestAll",
            "_ZoomTest",
          ],
          path: "Sources/ZoomTest",
          exclude: [
            "Resources"
          ]
        ),
        .target(
          name: "ZoomTestAll",
          publicHeadersPath: "./"
        ),
        .binaryTarget(
            name: "_ZoomTest",
            url: "https://github.com/tiphainegiron/binary-package-test/releases/download/4.0.0/MobileRTC.xcframework.zip",
            checksum: "c3aa8d5b2896ad0a3460010eadc029f483a81660e69bdd2d0ad04924f43c088a"
           // checksum: "935aa00c585581cbf6f309545a2ef14d170e8f7e"
        )
    ]
)


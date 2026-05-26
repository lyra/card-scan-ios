// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "LyraCardScan",
    platforms: [
        .iOS(.v26)
    ],
    products: [
        .library(
            name: "LyraCardScan",
            targets: ["LyraCardScanTarget"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "LyraCardScanLibrary",
            url: "https://raw.githubusercontent.com/lyra/card-scan-ios/1.0.0/LyraCardScan.xcframework.zip",
            checksum: "23d9c8e4e17f4a6dd4e2c019be287e35a78327167fd3aa597d6c3473ef76b1b0"
        ),
        .target(
            name: "LyraCardScanTarget",
            dependencies: [
                "LyraCardScanLibrary"
            ]
        )
    ]
)

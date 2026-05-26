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
            checksum: "3013bfc98bff7098fdafeeb4000bef43637ad8385bd42cc3f625a44f21e50158"
        ),
        .target(
            name: "LyraCardScanTarget",
            dependencies: [
                "LyraCardScanLibrary"
            ]
        )
    ]
)

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
            checksum: "364da7b51318139907d33574804620e2861d38d92bd2096592d1f25d455600c5"
        ),
        .target(
            name: "LyraCardScanTarget",
            dependencies: [
                "LyraCardScanLibrary"
            ]
        )
    ]
)

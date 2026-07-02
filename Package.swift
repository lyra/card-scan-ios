// swift-tools-version: 5.4
import PackageDescription

let package = Package(
    name: "LyraCardScan",
    platforms: [
        .iOS(.v15)
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
            url: "https://raw.githubusercontent.com/lyra/card-scan-ios/1.0.1/LyraCardScan.xcframework.zip",
            checksum: "306e50e1ce3317152b455515360f38b9039ec77303a9ee61ed518764ae0f4e35"
        ),
        .target(
            name: "LyraCardScanTarget",
            dependencies: [
                "LyraCardScanLibrary"
            ]
        )
    ]
)

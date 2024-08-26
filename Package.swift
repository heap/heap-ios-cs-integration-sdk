// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "HeapContentsquareIntegrationSDK",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "HeapContentsquareIntegrationSDK",
            targets: ["HeapContentsquareIntegrationSDK"])
    ],
    dependencies: [
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.7.0"),
        .package(url: "https://github.com/ContentSquare/CS_iOS_SDK.git", from: "4.33.0"),
    ],
    targets: [
        .target(
            name: "HeapContentsquareIntegrationSDK",
            dependencies: [
                .product(name: "HeapSwiftCore", package: "heap-swift-core-sdk"),
                .product(name: "ContentsquareModule", package: "CS_iOS_SDK"),
                "HeapContentsquareIntegrationImplementation",
            ]),
        .binaryTarget(
            name: "HeapContentsquareIntegrationImplementation",
            url: "https://cdn.heapanalytics.com/ios/heap-ios-cs-integration-0.7.1.zip",
            checksum: "85465ba57a631f3b1c5ec54afcf81577b95a017dc1476b043f00110a4f8f5f1d"
        ),
    ]
)

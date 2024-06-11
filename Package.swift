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
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.6.1"),
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
            url: "https://cdn.heapanalytics.com/ios/heap-ios-cs-integration-0.6.0.zip",
            checksum: "596d8b21efdbb15364679bfb7b2fe5a481e9fb392cdd5474ad335faf46296b66"
        ),
    ]
)

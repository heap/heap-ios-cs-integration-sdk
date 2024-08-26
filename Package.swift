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
            url: "https://cdn.heapanalytics.com/ios/heap-ios-cs-integration-0.7.0.zip",
            checksum: "092a08880c87276743827da7bb8e5acee89be3299b9209c157c7cb1c52b62923"
        ),
    ]
)

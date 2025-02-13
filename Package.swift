// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "HeapContentsquareIntegrationSDK",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "HeapContentsquareIntegrationSDK",
            targets: ["HeapContentsquareIntegrationSDK"])
    ],
    dependencies: [
        .package(url: "https://github.com/heap/heap-swift-core-sdk.git", from: "0.8.0"),
        .package(url: "https://github.com/ContentSquare/CS_iOS_SDK.git", from: "4.39.0"),
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
            url: "https://github.com/heap/heap-ios-cs-integration-sdk/releases/download/0.8.0/package.zip",
            checksum: "328fb352623e92b4553ebaca7c3ccc579171923488e2debbbbc1fe236ee6e7b8"
        ),
    ]
)

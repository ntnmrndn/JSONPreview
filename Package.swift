// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "JSONPreview",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "JSONPreview",
            targets: ["JSONPreview"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "JSONPreview",
            resources: [
                .copy("PrivacyInfo.xcprivacy"),
                .process("Resources/Assets.xcassets"),
            ]),
        .testTarget(
            name: "JSONPreviewTests",
            dependencies: ["JSONPreview"]),
    ]
)

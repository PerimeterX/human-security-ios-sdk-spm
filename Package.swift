// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let HUMAN_SDK = Target.binaryTarget(
  name: "HUMAN_SDK",
  url: "https://github.com/PerimeterX/human-security-ios-sdk/releases/download/4.2.0/HUMAN_SDK.xcframework.zip",
  checksum: "878a757fe3bdd286768d948d1d6d2471feeade0445d3759afe031a260a0e5bdb"
)

let package = Package(
  name: "HUMAN_SDK",
  platforms: [.iOS(.v12)],
  products: [
    .library(
        name: "HUMAN_SDK",
        targets: ["HUMAN_SDK"]
    )
  ],
  targets: [
    HUMAN_SDK,
    .target(
        name: "HUMAN_SDK_Stub",
        path: "Sources",
        resources: [
            .copy("Resources/PrivacyInfo.xcprivacy")
        ]
    ),
  ]
)

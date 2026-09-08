// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let HUMAN_SDK = Target.binaryTarget(
  name: "HUMAN_SDK",
  url: "https://github.com/PerimeterX/human-security-ios-sdk/releases/download/5.3.2/HUMAN_SDK.xcframework.zip",
  checksum: "fd8ff61eac425f28061759f3acf21d7759614d5cc44b7c5f5e132f9d8f30e387"
)

let package = Package(
  name: "HUMAN_SDK",
  platforms: [.iOS(.v13)],
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

// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let HUMAN_SDK = Target.binaryTarget(
  name: "HUMAN_SDK",
  url: "https://github.com/PerimeterX/human-security-ios-sdk/releases/download/4.1.1/HUMAN_SDK.xcframework.zip",
  checksum: "72e4b32f5fa95ee178b76bc3a32b279c835f61efc5a0039703e0002e61cb9ba8"
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

// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let HUMAN_SDK = Target.binaryTarget(
  name: "HUMAN_SDK",
  url: "https://github.com/PerimeterX/human-security-ios-sdk/releases/download/4.3.0/HUMAN_SDK.xcframework.zip",
  checksum: "b5750a87281fc17c9fb0461d87d299b7d78b255f92731e12a297b86900be1b19"
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

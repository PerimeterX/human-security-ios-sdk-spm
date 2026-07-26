// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let HUMAN_SDK = Target.binaryTarget(
  name: "HUMAN_SDK",
  url: "https://github.com/PerimeterX/human-security-ios-sdk/releases/download/5.2.0/HUMAN_SDK.xcframework.zip",
  checksum: "8d9d4a06e3ebfcc05aed0909133402fd91cda4a903397f517a1d666b3c0333f7"
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

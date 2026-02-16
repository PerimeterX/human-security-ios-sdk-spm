# HUMAN iOS/iPadOS/visionOS SDK for Swift Package Manager

This repository provides Swift Package Manager support for [HUMAN iOS/iPadOS/visionOS SDK](https://github.com/PerimeterX/human-security-ios-sdk), allowing you to easily integrate the SDK into your iOS/iPadOS/visionOS application.

### Installing HUMAN SDK

To install HUMAN SDK using [Swift Package Manager](https://github.com/apple/swift-package-manager) you can follow the [tutorial published by Apple](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) using the URL for this repository with the current version:

1. In Xcode, select “File” → “Add Packages...”
2. Enter `https://github.com/PerimeterX/human-security-ios-sdk-spm.git`

Alternatively, you can add the following dependency to your `Package.swift` file:

```swift
.package(url: "https://github.com/PerimeterX/human-security-ios-sdk-spm.git", from: "4.3.4")
```

### Why is there a separate repository for Swift Package Manager support?

The main git repository for [HUMAN SDK](https://github.com/PerimeterX/human-security-ios-sdk) is very large, and Swift Package Manager always downloads the full repository with all git history. This [PerimeterX iOS SDK SPM](https://github.com/PerimeterX/human-security-ios-sdk-spm) repository is much smaller, so can be downloaded much more quickly.

Instead of downloading the full git history of HUMAN SDK and building it from source, this repository just contains a pointer to the precompiled XCFramework included in the [latest HUMAN iOS SDK release](https://github.com/PerimeterX/human-security-ios-sdk/releases/latest). Since [HUMAN SDK](https://github.com/PerimeterX/human-security-ios-sdk) doesn't provide source code it's strongly recommended that users depend on [HUMAN SDK SPM](https://github.com/PerimeterX/human-security-ios-sdk-spm) instead.

When using HUMAN SDK SPM, the downloaded `HUMAN_SDK.xcframework` isn't visible in the project navigator. To validate the authenticity of a HUMAN SDK SPM package, you can confirm that the `Package.swift` file references a binary XCFramework from https://github.com/PerimeterX/human-security-ios-sdk/releases. 

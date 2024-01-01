// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
//x-xcode-log://7D4BCEA0-66FF-4AC4-B5BE-10CBC0EF54EC Source files for target Feature should be located under 'Sources/Feature', or a custom sources path can be set with the 'path' property in Package.swift

import PackageDescription

let package = Package(
    name: "TestMe",
    platforms: [.iOS(.v17)],
    products: [
        // MARK: - Feature
        .library(name: "Authentication", targets: ["Authentication"]),
        .library(name: "Feature", targets: ["Feature"]),

    ],
    targets: [
        // MARK: - Feature
        .target(
            name: "Authentication", // 3
            dependencies: [
              .target(name: "Feature")
            ]
        ),
        .target(name: "Feature",
                path: "Sources/FeatureModules/Feature"
               )
    ]
)

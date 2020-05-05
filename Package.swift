
// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CodingChallenges",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "CodingChallenges",
            targets: ["CodingChallenges"]),
    ],
    targets: [
        .target(
            name: "CodingChallenges",
            path: ""
        ),
        .testTarget(
            name: "CodingChallengesTests",
            dependencies: [
                "CodingChallenges"
            ],
            path: "CodingChallengesTests"
        )
    ],
    swiftLanguageVersions: [
        .v4_2
    ]
)

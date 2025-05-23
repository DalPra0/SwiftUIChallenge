// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "SwiftUIChallenge",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "SwiftUIChallenge",
            targets: ["SwiftUIChallenge"]),
    ],
    targets: [
        .target(
            name: "SwiftUIChallenge",
            dependencies: []),
        .testTarget(
            name: "SwiftUIChallengeTests",
            dependencies: ["SwiftUIChallenge"]),
    ]
)

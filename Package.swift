// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "Torah",
  platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
  products: [
    .library(
      name: "Torah",
      targets: ["Torah"]),
  ],
  dependencies: [
    .package(url: "https://github.com/niazoff/SwiftExtensions.git", branch: "master"),
    .package(url: "https://github.com/niazoff/VerseIndex.git", branch: "master"),
  ],
  targets: [
    .target(
      name: "Torah",
      dependencies: ["SwiftExtensions", "VerseIndex"]),
    .testTarget(
      name: "TorahTests",
      dependencies: ["Torah"]),
  ]
)

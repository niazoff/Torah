// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "Torah",
  products: [
    .library(
      name: "Torah",
      targets: ["Torah"]),
  ],
  dependencies: [
    .package(url: "https://github.com/niazoff/SwiftExtensions.git", .branch("master")),
    .package(url: "https://github.com/niazoff/VerseIndex.git", .branch("master")),
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

// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "UsefulExtensions",
                      platforms: [.iOS(.v11),
                                  .tvOS(.v11)],
                      products: [
                        .library(name: "UsefulExtensions", targets: ["UsefulExtensions"])
                      ],
                      targets: [
                        .target(name: "UsefulExtensions", path: "Sources")
                      ],
                      swiftLanguageVersions: [.v5])

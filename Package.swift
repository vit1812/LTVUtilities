// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LTVUtilities",
    products: [
        .library(
            name: "LTVUtilities",
            targets: ["LTVUtilities"]),
    ],
    dependencies: [
//        .package(name: "MBProgressHUD", url: "https://github.com/jdg/MBProgressHUD.git", from: "1.2.0"),
    ],
    targets: [
        .target(
            name: "LTVUtilities",
            dependencies: []),
    ]
)

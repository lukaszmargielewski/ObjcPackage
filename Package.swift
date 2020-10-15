// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ObjcPackage",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "ObjcPackage", targets: ["ObjcPackage"]),
    ],
    targets: [
        .target(
            name: "ObjcPackage",
            path: "ObjcPackage/Source",
            publicHeadersPath: "Public",
            cSettings: [
                .headerSearchPath("Public"),
                .headerSearchPath("Internal"),
            ]
        ),
        .testTarget(
            name: "ObjcPackageTests",
            dependencies: ["ObjcPackage"],
            path: "ObjcPackageTests",
            sources: ["Source"],
            cSettings: [
                .headerSearchPath("../ObjcPackage/Source/Internal")
            ]
        )
    ]
)

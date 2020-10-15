// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Created by Hossein Asgari Seresht on 20/12/2019.
//  Copyright © 2019 Unwire. All rights reserved.
//
import PackageDescription

let package = Package(
    name: "ObjcPackage",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "ObjcPackage", targets: ["ObjcPackage"]),
    ],
    dependencies: [],
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
                .headerSearchPath("../ObjcPackage/Source/Internal"),
            ]
        )
    ]
)

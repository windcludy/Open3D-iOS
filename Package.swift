// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Open3D-iOS",
    products: [
        .library(
            name: "Open3D-iOS",
            targets: [
                "LinkOpen3D",
                "Open3DSupport",
                "Assimp",
                "JPEG",
                "jsoncpp",
                "libOpen3D_3rdparty_liblzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "png",
                "pybind.a",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/NumPy-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/LAPACKE-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/BLAS-LAPACK-AppStore-Workaround.git", .branch("main")),
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240316101146/Assimp.xcframework.zip", checksum: "7dfd52ed80d75ffe0ae5c5155e788165b2e4033c0a2b4a5ac6b9983fc189f35c"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240316101146/JPEG.xcframework.zip", checksum: "c5e2400b35f6a9950a18be951448b6fd9f2c49ec163791ba4380ccfaf6b56d43"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240316101146/jsoncpp.xcframework.zip", checksum: "ca0a0451e3f548f4c467efe3ffb1f350a509503978de37677bb50f978735725e"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240316101146/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "bf7c87d57bd83f33dff28356b2ae9345efb3a3c2051400f873908f8347538964"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240316101146/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "4ed5c5d9fc35b4bd82c121cc17003d32ef032246ae8afb78bf07dd7ed09a3caa"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240316101146/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "6b594c406cc80ebb3d662a520f7a8b7d2adb50132ec372e14fc96ba0cc438bf2"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240316101146/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "4cdecccd350feaf432d6d0df6edd4fc6de05d8b4492268b31ab167fc92d964cb"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240316101146/png.xcframework.zip", checksum: "190a8bb6a1e3c6fe6eb96f7b7701395ede956d3dc98fd106b3b60c53eea56481"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/pybind.a.xcframework.zip", checksum: "56ca201fd48af360cdaed7ba860dd6c668a8eb56ad7d5b297b816c0a30b29f5c")
        .target(
            name: "LinkOpen3D",
            dependencies: [
                "NumPy-iOS",
                "LAPACKE-iOS",
                "Assimp",
                "JPEG",
                "jsoncpp",
                "libOpen3D_3rdparty_liblzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "png",
                "pybind.a",
                "BLAS-LAPACK-AppStore-Workaround",
            ],
            linkerSettings: [
                .linkedLibrary("stdc++"),
            ]
        ),
        .target(
            name: "Open3DSupport",
            resources: [.copy("site-packages")]),
        .testTarget(
            name: "Open3D-iOSTests",
            dependencies: ["Open3DSupport"]),
    ]
)

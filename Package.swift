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
                "libOpen3D.a",
                "png",
                "pybind.a",
                "TBB",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/NumPy-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/LAPACKE-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/BLAS-LAPACK-AppStore-Workaround.git", .branch("main")),
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/Assimp.xcframework.zip", checksum: "7e9c5afaffd66c7e254a47ef0403e56d2d044de8478014fc25a908b0bb883c31"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/JPEG.xcframework.zip", checksum: "e2ca10bae15bb251cd854292909d0933186e7908f24bbeec43bdd28ead3588a3"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/jsoncpp.xcframework.zip", checksum: "b3f4171d4e50cb63c59b6a14893b499f0b672c12bb75fc781f4526bdc8c546e7"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "50245ab227e3180bf3f41c8ac50efd2cc90cb07a33026c9410082c9a6e070401"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "48756d1d902b6c35a4ae7d48962e8d5fc7f3b5711678bfb60886c231e93e1366"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "fba93daf82cccb49d1a8bd9cf46012598556355535f6f6877f3660c2be7f1f38"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "d473233eb574436e1598d7243730e6f68f92377dd08a53cc63c645481eb4b8b0"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/libOpen3D.a.xcframework.zip", checksum: "2266b61cd3e54dd3e429fbb43137c12d846ed08df24adb7594c08d9b9e9b9b27"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/png.xcframework.zip", checksum: "d6a0c72467afffa8b6ba3e646e7888ed61bdb3a71e6312a4a86bcbe1ab0eafc2"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/pybind.a.xcframework.zip", checksum: "d7a6b1786fac34c1437a5a9807ab166443a033a459fd66785b65830fc3239bbb"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240421162453/TBB.xcframework.zip", checksum: "080d4da2ae13810ced9011fc593821bc77f6e197bbb74f833bb65557b779bce8"),
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
                "libOpen3D.a",
                "png",
                "pybind.a",
                "TBB",
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

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
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/Assimp.xcframework.zip", checksum: "bb32185c094fb4db2dcda860101dc6090b9726db8f31c0c59c2079cfe1294072"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/JPEG.xcframework.zip", checksum: "466efb3cb13fc5e062748d29ea16e4c7ace747b5ac59d1e705700dad58a05d9e"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/jsoncpp.xcframework.zip", checksum: "b7c583df9bfea3062effc4585becc24d95f892dc041a7f347aa1e479770a7936"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "29824e64e1a0a4a5945e9b6287f80a735227d37a80c8d0b964d62295f9cbee94"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "5bd87c45884946c791b0b3d6e1cb3722d10dc3c0e731be21c573f6050b217298"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "b5e7683ca216925129b1b8afa0f315ac5c1b35d0ce43af5f090a9fc499402ad4"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "99a54a9fa4ab960d3aea6e29bbeb610dc38f1ec4d7be5249436812d16e16ceb3"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/libOpen3D.a.xcframework.zip", checksum: "9a2a285a8034778fcda3b9643d1d530a835b9a90d5eb67086adc0107fc29edb6"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/png.xcframework.zip", checksum: "bc2ff5bc690d074315313432c79e93abce9ebf9ccecd9ffae3720a91ae44a1b7"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/pybind.a.xcframework.zip", checksum: "985f5af6a375d5a2d12b3ace3e562470cf46c81ca7f4a674c0c9c6917936ee9f"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512082634/TBB.xcframework.zip", checksum: "a543fcc68654e3409cd369fd2831e6fd52017ebb7951734e86dd48d3d0404751"),
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

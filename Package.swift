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
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/Assimp.xcframework.zip", checksum: "96c79df0c3517f21a0440ecb9618fbfb4158685e15a30d07d9d68d247528a25c"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/JPEG.xcframework.zip", checksum: "75e75b2456139950c7f5d9c50299cdbf6c8a6e5fac94c8bc2c6de4a92a077ce0"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/jsoncpp.xcframework.zip", checksum: "d80a13eae796a3d2828474d12859cd43f73f6731a46e3e3a0efa21028f1b6c66"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "a60bdbdd84c003824afe33edd66d97f0c2d6c480212afbb4ae6ddd1f7f9277bb"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "68dbadf83f69ad56c3c3e0bdcb2c7e52f2cdf15fec4d22f4f5f69fb796a30a1f"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "71873ce598de27ed1663265662c4d3aab4380080ca22644a2fc1330a476b0b1a"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "12e3f15ee8b97428b343c2ad09c49d353b5af6e5cf7cdaca4def573133ac71b0"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/libOpen3D.a.xcframework.zip", checksum: "f7faff8e594677ed86f5c443f387c44add9a4dde27844212222411d05840f91e"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/png.xcframework.zip", checksum: "fa502970e0912c5a12f06d29e31bdb140224a697941dd8be3974fb50aa495214"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/pybind.a.xcframework.zip", checksum: "e707ff4477801919499989a12b203ae6a8d5547e21eda86632f2314cc22a2130"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240402144641/TBB.xcframework.zip", checksum: "be4bb310bda7663a954eb3678489d5f592ec563d4fbd3902057d38844fae13c7"),
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

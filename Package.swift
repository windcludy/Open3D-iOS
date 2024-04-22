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
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/Assimp.xcframework.zip", checksum: "1363f4ac6659a7585c58c7e0b7e3b5f02ee024fff23d55863e64aabae5fd3573"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/JPEG.xcframework.zip", checksum: "5cf9d29189194f2e09573846219aa0768c6e211fb781a1a86c197b1ce85513c9"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/jsoncpp.xcframework.zip", checksum: "10354d6958f689fe86f25a8a31a2362624697f16276c986470cf48f27a4ed193"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "0cc79bf78283e86f8d48955feb0030d64b9a4b4c0248be5264be19609aeadb21"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "8a85ec4ae146fcf4c89f779c792bc055c52c1ffb269ba01a489702c0f3874874"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "9bc7d2cfa20d49530c90ee7b917ef225dacebb3d86d96f767a6e7afe4f81318c"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "8ca55269e70855f21cec6ce0a6528b3ed7482630da0cff4a7717c2232c725df7"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D.a.xcframework.zip", checksum: "700b15b0c3502b608221cfaa48c34132d3bedcbcafa6f0cdcc417a2a10e1f0cd"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/png.xcframework.zip", checksum: "8aff4b71a0e13a81dda2bc0b09de204fbb37001ad105a785e81a3edba7935073"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/pybind.a.xcframework.zip", checksum: "1174a1855e5d96a0ee845121a5db94f094acc8816fdf2b498dfd46318a9811b4"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/TBB.xcframework.zip", checksum: "bf277779cb349c277bdd9bde7284988661c845f91aa627bde8fb97e2203eed57"),
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

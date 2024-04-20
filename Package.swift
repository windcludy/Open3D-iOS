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
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/Assimp.xcframework.zip", checksum: "fce3bc7518f2bab906596887c096f79d92e1de5cddfe2952e3001afec1cbd15d"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/JPEG.xcframework.zip", checksum: "f2e00cd37c8d59b40d0e8f2bc1e89c72c816c88d90a50c07ce0b31c95e233e55"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/jsoncpp.xcframework.zip", checksum: "c7e02e0d412a0577327980e88a0ffe638a6926f37f89fb49a7e2b86c8290cd2d"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "6769478c926467be85595aea0c9625a9b61f3cf2941d7861c0e1cbd6edddf45b"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "24cdc187cdcb26ddce9b4c7e6c6a72369c9d783eba7883974e28d08674892431"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "0c9c1e67a72b045acff893eb8d46c4dd3ac884058819ef24a9ead5f7ccdc56ac"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "44a82d70f84764fa4092672bf46e21cb159cf78c7ac4d896a2434c0dc3511b81"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/libOpen3D.a.xcframework.zip", checksum: "c668de8e41996271428cd83d04b24b7316f1c5e285a181d29334eace65f2204e"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/png.xcframework.zip", checksum: "dbec47ae030023211abaabb70f2245be990d4e4ad66036b6bf766abe3527c8be"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20220804014308/pybind.a.xcframework.zip", checksum: "56ca201fd48af360cdaed7ba860dd6c668a8eb56ad7d5b297b816c0a30b29f5c"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240415151618/TBB.xcframework.zip", checksum: "ce62d46844d0621edab96fa2e3d7a7bac4d1c64bf52d38ea1d58c79664fe2db1"),
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

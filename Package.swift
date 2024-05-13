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
                "libvtksys",
                "libvtkCommonSystem",
                "libvtkCommonCore",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/NumPy-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/LAPACKE-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/BLAS-LAPACK-AppStore-Workaround.git", .branch("main")),
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/Assimp.xcframework.zip", checksum: "03330437997a92863465effe5a2613699ae69cf04d0050495b991ca847cc6535"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/JPEG.xcframework.zip", checksum: "4b7d50c68e01bf760417f55e82976561dc9def1e731e9e93fca158fcfe9b1544"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/jsoncpp.xcframework.zip", checksum: "8982a4fcd51642e1488fb906bdeeed510c9c6e446346ab043bfcbc0865b85f4c"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "142bbc85e296ffd3ad2b253687ac045526acfa6616b77348c1392e379cd97bc7"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "567d10b548fdb9e600e405c46bba830f7ff82ab74cfee776431122d08242b3c3"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "422b5900f89192d3397a892749471eabe306539b04cd9b0c26f8412b83935a88"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "95ffe46222e384d2f0c306f55fcd10f0dcb3de3c66ef7a10245d13c847a1e761"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/libOpen3D.a.xcframework.zip", checksum: "e57248207673a5300038e07aa189470d98ff92573e4cb0a704df9b5816fc96a9"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/png.xcframework.zip", checksum: "999c4a36586126945820419661eb44ef28f049ff4381191aed66bf2d35587cdf"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/pybind.a.xcframework.zip", checksum: "39dcdaa52f1f0085e47f90ecf61d354f01e86bb732b4decd6409c3624aac9f3a"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/TBB.xcframework.zip", checksum: "175964660763e7f49f37575a2865bde52ebfe3dc427f9e27d2c124acd940324c"),
        .binaryTarget(name: "libvtksys", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_sys.zip", checksum: "2c18f90c6c71ed83f3d82ae9ce8fe55f69428f4dafb35bebf6e66309fa10adfe"),
        .binaryTarget(name: "libvtkCommonCore", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_common_core.zip", checksum: "fa2c1afa6960a68dec8ba33c409eeb9aee021311d8bb83d244243802bb587fe4"),
        .binaryTarget(name: "libvtkCommonSystem", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_common_sys.zip", checksum: "43d8eb1a079fec5c66b2075a5b4e338e8b8caef0d786a70ca041342f7fbe9122"),
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
                "libvtksys",
                "libvtkCommonSystem",
                "libvtkCommonCore",
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

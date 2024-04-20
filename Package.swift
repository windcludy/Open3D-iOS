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
                "IrrXML",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/NumPy-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/LAPACKE-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/BLAS-LAPACK-AppStore-Workaround.git", .branch("main")),
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/Assimp.xcframework.zip", checksum: "14d0f86e5c32d3c6a77219c35705768f6b7373a6ad9fa36e14f5f7a964975aa8"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/JPEG.xcframework.zip", checksum: "985734a9533adffd7f5c0a8c6d704ef49dcf25919dbaa1afbbe6e554fde45f44"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/jsoncpp.xcframework.zip", checksum: "e651b96c7011fcfc2fb6723029a9da341678f252748750e85da04722d19603ad"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "f638a27859967e5db06aedcf0c207d39409a1f3d404345ad949f661348080059"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "c99124d58d43b439ee38a574128f17c3e355454c85739b382a5427ebedd04570"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "3327b470552455ea585a040519c64ab40568c177e3314a478271b470511eb01d"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "fb57db12d28a64eb2f225e2c601c1508fbadd01e8ce16cf5149077d4ce136927"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/libOpen3D.a.xcframework.zip", checksum: "3b93155cc6ae30d7e7e87c688e9299f88a3404366120b9f6dfed69825959c46c"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/png.xcframework.zip", checksum: "80eeaa2add11690ba9043875ae0874db0d7530b5776ed49845b146fae6088a53"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/pybind.a.xcframework.zip", checksum: "e95298a94051a714c2e5fdf4506d1388639711f74d3fb1dd37e7dd9ad7c84e99"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240420125919/TBB.xcframework.zip", checksum: "50f6355ff72d9728dc6e12e4fc8c987d189befe42b617ffb714b9dc341976b2d"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/IrrXML.xcframework.zip", checksum: "7e948d42956a3880e61fa0c98d121fa31fde6b729d3074d0516dd04154efbb11"),
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
                "IrrXML",
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

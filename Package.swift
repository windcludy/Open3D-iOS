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
                // "libvtkCommonComputationalGeometry",
                "libvtkCommonDataModel",
                "libvtkCommonMath",
                "libvtkCommonExecutionModel",
                "libvtkCommonMisc",
                "libvtkCommonSystem",
                "libvtkCommonCore",
                "libvtkCommonTransforms",
                "libvtkFiltersCore",
                "libvtkFiltersGeneral",
                "libvtkFiltersModeling",
                "libvtkFiltersSources",
                "libvtkfmt",
                // "libvtkkissfft",
                "libvtkpugixml",
                "libvtksys",
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
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/libOpen3D.a.xcframework.zip", checksum: "b056f2153f40ab6ec4bf647413b7bc3855483f5867202069afe12f3489323678"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/png.xcframework.zip", checksum: "999c4a36586126945820419661eb44ef28f049ff4381191aed66bf2d35587cdf"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/pybind.a.xcframework.zip", checksum: "39dcdaa52f1f0085e47f90ecf61d354f01e86bb732b4decd6409c3624aac9f3a"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/TBB.xcframework.zip", checksum: "175964660763e7f49f37575a2865bde52ebfe3dc427f9e27d2c124acd940324c"),
        // .binaryTarget(name: "libvtkCommonComputationalGeometry", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_Common_Computational.zip", checksum: "8799fc17882022ee99315d87ada9bcfd1fe202d8f384bb9383c76fe135341d75"),
        .binaryTarget(name: "libvtkCommonDataModel", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_common_data.zip", checksum: "f7ade7d3d5368badac1dc3e5d7c812d636779d682e7dff1e93dcce0e86de1d29"),
        .binaryTarget(name: "libvtkCommonMath", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_common_math.zip", checksum: "efce678b6e9210172bb5aec74eb79b5baa462830df04509a65606484d91e0317"),
        .binaryTarget(name: "libvtkCommonExecutionModel", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_common_execution.xcframework.zip", checksum: "e34a57f15412847660f15c3534441ce11ecd616efdb098cd60b16e691a8865b1"),
        .binaryTarget(name: "libvtkCommonMisc", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_common_misc.xcframework.zip", checksum: "3414d7db4e37bf3a5407b9e1385765429cd15d775878079d70fd41fc76933367"),
        .binaryTarget(name: "libvtkCommonSystem", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_common_sys.zip", checksum: "43d8eb1a079fec5c66b2075a5b4e338e8b8caef0d786a70ca041342f7fbe9122"),
        .binaryTarget(name: "libvtkCommonCore", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_common_core.zip", checksum: "fa2c1afa6960a68dec8ba33c409eeb9aee021311d8bb83d244243802bb587fe4"),
        .binaryTarget(name: "libvtkCommonTransforms", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_common_trans.zip", checksum: "5efdd5652b00b0e499b3b24a350aaec7ffbac2743c86c56bb3a829baa4d581f1"),
        
        .binaryTarget(name: "libvtkFiltersCore", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_filte_core.zip", checksum: "1139817980003c91a116dccd4195c3ebf258396971af80728a306dc4b44805c0"),
        .binaryTarget(name: "libvtkFiltersGeneral", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_filte_general.zip", checksum: "d11082baa8ca98c5c6c642b1a06daa6d8a853768dc3f8646358e2d928d088086"),
        .binaryTarget(name: "libvtkFiltersModeling", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_filte_model.zip", checksum: "9ba176b399ba467956bfb2f69e63f460c8f6e803a9656df3703eaa5b66fe16be"),
        .binaryTarget(name: "libvtkFiltersSources", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_filte_src.zip", checksum: "0acad6b359896c11ad53dca71254861ee3412cd49d7e25d26b95748563a1ec72"),
        .binaryTarget(name: "libvtkfmt", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_fmt.zip", checksum: "be8b24951a2af530e5604dfa68dd2a4cfd829df9019e01de756f0cc779d97433"),
        // .binaryTarget(name: "libvtkkissfft", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_kiss_fft.xcframework.zip", checksum: "cc781833662bee2b27742edb53163d358d96247b3d6100442faf358699877647"),
        .binaryTarget(name: "libvtkpugixml", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_plugin_xml.zip", checksum: "ba7ea81121ffc2b8597b4f0066c8cfe468595d00ead16730d1e8426bc468affc"),
        .binaryTarget(name: "libvtksys", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240512110206/VTK_sys.zip", checksum: "2c18f90c6c71ed83f3d82ae9ce8fe55f69428f4dafb35bebf6e66309fa10adfe"),
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
                // "libvtkCommonComputationalGeometry",
                "libvtkCommonDataModel",
                "libvtkCommonMath",
                "libvtkCommonExecutionModel",
                "libvtkCommonMisc",
                "libvtkCommonSystem",
                "libvtkCommonCore",
                "libvtkCommonTransforms",
                "libvtkFiltersCore",
                "libvtkFiltersGeneral",
                "libvtkFiltersModeling",
                "libvtkFiltersSources",
                "libvtkfmt",
                // "libvtkkissfft",
                "libvtkpugixml",
                "libvtksys",
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

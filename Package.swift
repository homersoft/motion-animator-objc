// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "MotionAnimator",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "MotionAnimator",
            targets: ["MotionAnimator"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/homersoft/motion-interchange-objc.git", revision: "197849e83f37aeab85ee172ba93cca1731d090a5")
    ],
    targets: [
        .target(
            name: "MotionAnimator",
            dependencies: [
                .product(name: "MotionInterchange", package: "motion-interchange-objc")
            ],
            path: "src",
            publicHeadersPath: "include"
        )
    ]
)

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
        .package(url: "https://github.com/homersoft/motion-interchange-objc.git", revision: "331347547cc5a42273ce17620630c3df5cf9ff82")
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

// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "WeatherDataXCTest",
    targets: [
        .target(
            name: "TemperatureConverter",
            path: "Sources"
        ),
        .testTarget(
            name: "TemperatureConverterTests",
            dependencies: ["TemperatureConverter"],
            path: "Tests"
        )
    ]
)

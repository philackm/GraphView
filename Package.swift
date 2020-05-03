// swift-tools-version:5.0
//
import PackageDescription

let package = Package(name: "ScrollableGraphView",
                      platforms: [.iOS(.v8)],
                      products: [.library(name: "ScrollableGraphView",
                                          targets: ["ScrollableGraphView"])],
                      targets: [.target(name: "ScrollableGraphView",
                                        path: "Classes")],
                      swiftLanguageVersions: [.v5])

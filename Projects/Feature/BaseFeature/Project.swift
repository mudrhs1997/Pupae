import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: Module.Feature.BaseFeature.rawValue,
    targets: [
        // MARK: - Implement

        .implement(
            module: .feature(.BaseFeature),
            dependencies: [
                .feature(target: .BaseFeature, type: .interface),
//        .shared(target: .DesignSystem),
                .shared(target: .ThirdPartyLibrary, type: .interface),
            ]
        ),

        // MARK: - Interface

        .interface(
            module: .feature(.BaseFeature),
            dependencies: [
            ]
        ),
    ]
)

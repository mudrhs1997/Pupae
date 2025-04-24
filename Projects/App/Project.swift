import DependencyPlugin
import EnvironmentPlugin
import ProjectDescription

let project = Project(
    name: environment.name,
    targets: [
        // MARK: - App

        .target(
            name: environment.name,
            destinations: environment.destination,
            product: .app,
            bundleId: "\(environment.organizationName).\(environment.name)",
            deploymentTargets: environment.deploymentTargets,
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: Module.Feature.allCases.map { .feature(target: $0) }
                + [
                ],
            settings: .settings(configurations: [
                .debug(name: "Debug"),
                .release(name: "Release"),
            ])
        ),

        // MARK: - Tests

        .target(
            name: "\(environment.name)UnitTests",
            destinations: environment.destination,
            product: .unitTests,
            bundleId: "\(environment.organizationName).\(environment.name)",
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [
                .target(name: environment.name, status: .optional, condition: .none),
            ]
        ),
    ]
)

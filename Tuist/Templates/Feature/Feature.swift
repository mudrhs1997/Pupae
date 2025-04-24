import ProjectDescription

private let nameAttribute: Template.Attribute = .required("name")

private let template = Template(
    description: "A template for Feature",
    attributes: [
        nameAttribute,
    ],
    items: [
        // Project.swift
        .file(
            path: "Projects/Feature/\(nameAttribute)Feature/Project.swift",
            templatePath: "Project.stencil"
        ),

        // Implement
        .file(
            path: "Projects/Feature/\(nameAttribute)Feature/Sources/Presentatin/\(nameAttribute)ViewController.swift",
            templatePath: "Sources/Implement.stencil"
        ),
        .file(
            path: "Projects/Feature/\(nameAttribute)Feature/Sources/Coodinator/\(nameAttribute)Coordinator.swift",
            templatePath: "Sources/Implement.stencil"
        ),

        // Demo
        .file(
            path: "Projects/Feature/\(nameAttribute)Feature/Demo/Sources/AppDelegate.swift",
            templatePath: "Demo/Demo.stencil"
        ),
        .file(
            path: "Projects/Feature/\(nameAttribute)Feature/Demo/Resources/LaunchScreen.storyboard",
            templatePath: "Demo/Demo.stencil"
        ),

        // Interface
        .file(
            path: "Projects/Feature/\(nameAttribute)Feature/Interface/\(nameAttribute)Factory.swift",
            templatePath: "Interface/Interface.stencil"
        ),

        // Testing
        .file(
            path: "Projects/Feature/\(nameAttribute)Feature/Testing/Mock\(nameAttribute)Repository.swift",
            templatePath: "Testing/Testing.stencil"
        ),

        // Test
        .file(
            path: "Projects/Feature/\(nameAttribute)Feature/Tests/\(nameAttribute)Tests.swift",
            templatePath: "Tests/Tests.stencil"
        ),
    ]
)

import UIKit

public protocol Coordinator {
    var rootViewController: UIViewController { get }
    var parent: Coordinator? { get set }
    var children: [Coordinator] { get }

    func route(to route: RoutePath)
}

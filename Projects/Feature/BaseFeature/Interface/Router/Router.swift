import UIKit

public protocol Router {
    func setRoot(_ viewController: UIViewController)
    func present(_ viewController: UIViewController, animated: Bool)
    func push(_ viewController: UIViewController, animated: Bool)
    func pop(animated: Bool)
    func dismiss(animated: Bool)
}

import BaseFeature
import UIKit

public final class SplashCoordinator: BaseCoordinator {
  private let navigationController = UINavigationController()
    private let splashViewController: SplashViewController

    override public var rootViewController: UINavigationController {
        navigationController
    }

    init(
        splashViewController: SplashViewController
    ) {
        self.splashViewController = splashViewController
    }

    override public func start() {
        showSplashView()
    }

    private func showSplashView() {
        rootViewController.setViewControllers([splashViewController], animated: true)
    }
}

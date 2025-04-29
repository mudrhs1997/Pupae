import BaseFeature
import Foundation
import SplashFeatureInterface

struct SplashFactoryImpl: SplashFactory {
    func makeCoordinator() -> Coordinator {
        let splashViewModel = SplashViewModel()
        let splashViewController = SplashViewController(splashViewModel: splashViewModel)
        return SplashCoordinator(
            splashViewController: splashViewController
        )
    }
}

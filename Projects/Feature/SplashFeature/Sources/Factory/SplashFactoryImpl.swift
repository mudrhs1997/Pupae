import BaseFeature
import Foundation
import SplashFeatureInterface

struct SplashFactoryImpl: SplashFactory {
  func makeCoordinator() -> Coordinator {
    let router = SplashRouter()
    let splashViewModel = SplashViewModel(router: router)
    let splashViewController = SplashViewController(splashViewModel: splashViewModel)
    return SplashCoordinator(
      splashRouter: router,
      splashViewController: splashViewController
    )
  }
}

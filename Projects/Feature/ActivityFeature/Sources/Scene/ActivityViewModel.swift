import Foundation
import FamilyControls
import BaseFeature
import DeviceActivity
import RxSwift
import ManagedSettings


final class ActivityViewModel: ObservableObject {
  private let store = ManagedSettingsStore()
  @Published var selection = FamilyActivitySelection()

  struct Input {

  }

  struct Output {

  }


  func transform(input: Input) -> Output {
    let output = Output()
    return output
  }

  func setShieldRestrictions() {
    let applications = selection.applicationTokens

    store.shield.applications = applications

    print("선택된 앱의 수: \(applications)")
//    print("✅ 차단할 앱: \(applications.count)")
  }


}

import UIKit
import SwiftUI
import BaseFeature
import DeviceActivity

public final class ActivityViewController: BaseViewController {
  private let viewModel: ActivityViewModel

  init(viewModel: ActivityViewModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

struct ExampleView: View {
  let selectedApp: Set<ApplicationToken>
  let selectedCategories: Set<ActivityCategoryToken>
  let selectedWebDomains: Set<WebDomainToken>

  @State private var context: DeviceActivityReport.Context = .barGraph
  @State private var filter = DeviceActivityFilter(
    segment: .daily(during: Calendar.current.dateInterval(of: .weekOfYear, for: .now)!),
    users: .children,
    devices: .init([.iPhone, .iPad]),
    applications: selectedApp,
    categories: selectedCategories,
    webDomains: selectedWebDomains
  )

  public var body: some View {
    VStack {
      DeviceActivityReport(context, filter: filter)
    }
  }
}

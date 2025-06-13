import UIKit
import SwiftUI
import BaseFeature
import FamilyControls
import DeviceActivity

public final class ActivityViewController: BaseViewController {


  init() {
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

struct ExampleView: View {
  @EnvironmentObject private var model: ActivityViewModel
  @State var isPresented = false

  var body: some View {
    VStack {
      Button("Present FamilyActivity") {
        isPresented = true
      }
      .sheet(isPresented: $isPresented) {
        SelectionView(selection: $model.selection, isPresented: $isPresented) {
          model.setShieldRestrictions()
        }
          .presentationDragIndicator(.visible)
      }
    }
//    .onChange(of: selection) { newValue in
//      print("value Changed: \(newValue)")
//      model.setShieldRestrictions()
//    }
  }
}

struct SelectionView: View {
  @Binding var selection: FamilyActivitySelection
  @Binding var isPresented: Bool
  let setRestrictionApplications: () -> Void

  var body: some View {
    VStack {
      HStack {
        Spacer()

        Button("Done") {
          setRestrictionApplications()
          isPresented = false
        }
          .padding()
      }

      FamilyActivityPicker(selection: $selection)
    }
  }
}

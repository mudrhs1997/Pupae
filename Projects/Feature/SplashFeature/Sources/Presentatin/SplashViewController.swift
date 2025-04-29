import BaseFeature
import UIKit

final class SplashViewController: BaseViewController {
    // MARK: - Properties

    private let splashViewModel: BaseViewModel

    private let mainLabel: UILabel = {
        let label = UILabel()
      label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Splash View"
        label.textColor = .white
        return label
    }()

    init(splashViewModel: BaseViewModel) {
        self.splashViewModel = splashViewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        setupSubviews()
        setupLayout()
    }

    override func bindState() {}

    override func bindAction() {}

    override func setupSubviews() {
        view.addSubview(mainLabel)
    }

    override func setupLayout() {
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            mainLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            mainLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            mainLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ])
    }
}

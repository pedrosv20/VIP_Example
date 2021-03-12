import UIKit

protocol ChangeColorViewProtocol {
    func changeColor(_ color: UIColor)
}

final class ChangeColorView: CodedView, ChangeColorViewProtocol {
    // MARK: - UIComponents

    private lazy var backgroundView: UIView = {
      let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private lazy var changeColorButton: UIButton = {
        let button = UIButton()
        button.setTitle("change color", for: .normal)
        button.addTarget(self, action: #selector(changeColorButtonAction), for: .touchDown)
        
        return button
    }()
    
    // MARK: - Actions
    
    struct Action {
        let didTapChangeColorButton: () -> Void
    }
    
    let action: Action?

    
    // MARK: - Initialization

    init(action: Action? = nil) {
        self.action = action
        super.init(frame: .zero)
        
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Layout Setup

    override public func addSubViews() {
        self.addSubview(backgroundView)
        backgroundView.addSubview(changeColorButton)
    }
    
    override public func constrainSubViews() {
        constraintBackgroundView()
        constraintChangeColorButton()
    }
    
    // MARK: - Constraint Setup

    private func constraintBackgroundView() {
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    private func constraintChangeColorButton() {
        changeColorButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            changeColorButton.topAnchor.constraint(equalTo: backgroundView.topAnchor),
            changeColorButton.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor),
            changeColorButton.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor),
            changeColorButton.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor),
        ])
    }
    
    // MARK: - Public methods
    
    func changeColor(_ color: UIColor) {
        backgroundView.backgroundColor = color
    }

    
    // MARK: - Button Actions
    
    @objc func changeColorButtonAction() {
        action?.didTapChangeColorButton()
    }
}

import UIKit

final class BackgroundRedView: CodedView {
    // MARK: - UIComponents

    private lazy var teste: UIView = {
      let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    // MARK: - Initialization

    init() {
        super.init(frame: .zero)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Layout Setup

    override public func addSubViews() {
        self.addSubview(teste)
    }
    
    override public func constrainSubViews() {
        constraintTeste()
        
    }
    
    // MARK: - Constraint Setup

    private func constraintTeste() {
        teste.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            teste.topAnchor.constraint(equalTo: self.topAnchor),
            teste.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            teste.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            teste.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}

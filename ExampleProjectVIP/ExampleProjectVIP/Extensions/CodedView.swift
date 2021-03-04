import UIKit

protocol ViewCodeConfigurator {
    func addSubViews()
    func constrainSubViews()
    func configureAdditionalSettings()
}

extension ViewCodeConfigurator {
    fileprivate func initLayout() {
        addSubViews()
        constrainSubViews()
        configureAdditionalSettings()
    }
}

open class CodedView: UIView, ViewCodeConfigurator {
    // MARK: - Initialization

    public override init(frame: CGRect) {
        super.init(frame: frame)
        initLayout()
    }
    
    @objc
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout Setup

    open func addSubViews() {
        fatalError("You should override this function to setup your view")
    }
    
    open func constrainSubViews() {
        fatalError("You should override this function to setup your view")
    }
    
    open func configureAdditionalSettings() {}
}

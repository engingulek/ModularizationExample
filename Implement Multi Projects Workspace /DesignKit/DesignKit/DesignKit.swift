

import UIKit


public protocol DesignKit {
    func buildRedReview() -> UIView
    func buildView(themeColor: ThemeColor) -> UIView
}


public enum ThemeColor {
    case bgColor
    case bgColor1
    
    var color : UIColor {
        switch self {
        case .bgColor:
            return .systemIndigo
        case .bgColor1:
            return .systemCyan
        }
    }
}

public class DesignKitImp : DesignKit {
    public init() {}
    
    public func buildRedReview() -> UIView {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    public func buildView(themeColor: ThemeColor) -> UIView {
        let view = UIView()
        view.backgroundColor = themeColor.color
        view.translatesAutoresizingMaskIntoConstraints =  false
        return view
    }
}

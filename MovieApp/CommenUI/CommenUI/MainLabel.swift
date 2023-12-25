
import Foundation
import UIKit
import SnapKit


public class MainLabel : UILabel {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        font = UIFont.systemFont(ofSize: 32)
        textColor = .white
        layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

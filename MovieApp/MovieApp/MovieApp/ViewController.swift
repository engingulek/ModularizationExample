

import UIKit
import CommenUI

class ViewController: UIViewController {
    private(set) lazy var helloWorld : MainLabel = {
        let label = MainLabel()
        label.text = "Hello World"
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(helloWorld)
        
        helloWorld.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }


}


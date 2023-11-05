

import UIKit
import DesignKit
import NetworkKit
class ViewController: UIViewController {

    private let designKit : DesignKit = DesignKitImp()
    private let networkKit : NetworkKit  = NetworkKitImp()
    
   
    
    private lazy var redView : UIView = {
       
        return designKit.buildView(themeColor: .bgColor)
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        fetchUsers()
    }

    
    private func setupViews(){
        [redView].forEach(view.addSubview(_:))
        
        NSLayoutConstraint.activate([
            redView.heightAnchor.constraint(equalToConstant: 200),
            redView.widthAnchor.constraint(equalToConstant: 200),
            redView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func fetchUsers() {
        Task {
            do{
                let users : [User] = try await networkKit.get(url: URL(string: "")!)
                print(users)
            }catch {
                fatalError(error.localizedDescription)
            }
            
        }
    }

}


struct User: Decodable {
    let name : String
    let email : String
}


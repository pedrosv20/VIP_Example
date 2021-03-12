import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        view = ChangeColorView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("oi")
    }


}


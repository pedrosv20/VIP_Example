import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        view = BackgroundRedView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("oi")
    }


}


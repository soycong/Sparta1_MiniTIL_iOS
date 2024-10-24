import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    
    var dayTitle: String?
    var contentText: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = dayTitle ?? "No Title"
        contentTextView.text = contentText ?? "No Content"

        contentTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        contentTextView.layer.cornerRadius = 10
        contentTextView.clipsToBounds = true
    }
}

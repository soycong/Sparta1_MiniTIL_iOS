import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var placeholderLabel = UILabel()
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var listButton: UIButton!
    
    // TIL 데이터를 저장할 배열
    var TIL: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        customTextField()
    }
    
    func customTextField() {
        textView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        textView.layer.cornerRadius = 10
        textView.clipsToBounds = true
        
        placeholderLabel.text = "내용을 입력해주세요."
        placeholderLabel.textColor = UIColor.lightGray
        placeholderLabel.font = UIFont.italicSystemFont(ofSize: 16)
        placeholderLabel.frame = CGRect(x: 5, y: 8, width: textView.frame.size.width - 10, height: 20)
        placeholderLabel.isHidden = !textView.text.isEmpty
        textView.addSubview(placeholderLabel)
        
        textView.delegate = self
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        if let text = textView.text, !text.isEmpty {
            // TIL 배열에 새로운 내용 추가
            TIL.append(text)
            
            // UserDefaults에 TIL 데이터를 저장
            saveTILData()
            
            print("Data saved: \(TIL)")
            
            // 텍스트 필드 초기화 및 플레이스홀더 표시
            textView.text = "" // 텍스트 초기화
            placeholderLabel.isHidden = false // 플레이스홀더 표시
        }
    }
    
    @IBAction func listButtonTapped(_ sender: UIButton) {
        let listVC = storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        
        listVC.data = loadTILData()
        
        navigationController?.pushViewController(listVC, animated: true)
    }

    func saveTILData() {
        UserDefaults.standard.set(TIL, forKey: "TILData")
    }
}

extension ViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
}

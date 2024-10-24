import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadTILData() // 데이터 불러오기 호출
        //print("Data loaded: \(data)") // 로드된 데이터 출력
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData() // 데이터 불러온 후 테이블뷰 갱신
    }

    func loadTILData() {
        if let savedTIL = UserDefaults.standard.array(forKey: "TILData") as? [String] {
            data = savedTIL
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Day " + String(indexPath.row + 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        // Day Title과 Content Text 설정
        detailViewController.dayTitle = "Day " + String(indexPath.row + 1)
        detailViewController.contentText = data[indexPath.row]
        
        present(detailViewController, animated: true, completion: nil)
    }

}

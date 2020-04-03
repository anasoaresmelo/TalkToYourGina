//: [Previous](@previous)

import PlaygroundSupport
import UIKit

var facts = ["a", "b", "c", "d"]

class libraryViewController: UITableViewController {
    override func viewDidLoad() {
        title = "Library"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return facts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // attempt to dequeue a cell
        var cell: UITableViewCell!
        cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            // none to dequeue – make a new one
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
            cell?.accessoryType = .disclosureIndicator
        }
        
        // configure cell here
        let fact = facts[indexPath.row]
        cell.detailTextLabel?.text = "\(fact)"
        cell.textLabel?.text = "Fact #\(indexPath.row + 1)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let text = tableView.cellForRow(at: indexPath)?.detailTextLabel?.text else { return }

        let detail = libraryDetailViewController()
        detail.message = text
        navigationController?.pushViewController(detail, animated: true)
    }
}

class libraryDetailViewController: UIViewController {
    var message = ""
    override func loadView() {
        title = "Learn more"
        view = UIView()
        view.backgroundColor = UIColor.white
    }
}

let master = libraryViewController()
let nav = UINavigationController(rootViewController: master)
PlaygroundPage.current.liveView = nav

//: [Next](@next)
